#lang racket

;;;; scrape and parse offices from ibreviary.com

(require net/http-easy
         net/cookies
         net/url
         racket/class)

(define (get-single-office month day year office)
  "Provide DAY MONTH and YEAR as numbers, and office as a string: one of
matins lauds daytime vespers compline. Returns a string of the office html
from ibreviary."
  (let* ([root-dir      "https://www.ibreviary.com/m2"]
         [options-page  (format "~a/opzioni.php" root-dir)]
         [toc-page      (format "~a/breviario.php" root-dir)]
         [matins-page   (format "~a/breviario.php?sufficio_delle_letture"
                                root-dir)]
         [lauds-page    (format "~a/breviario.php?s=lodi" root-dir)]
         [daytime-page  (format "~a/breviario.php?s=ora_media" root-dir)]
         [vespers-page  (format "~a/breviario.php?s=vespri" root-dir)]
         [compline-page (format "~a/breviario.php?s=compieta" root-dir)]
         [office-page   (match (string-downcase office)
                          ("matins" matins-page)
                          ("lauds" lauds-page)
                          ("daytime" daytime-page)
                          ("vespers" vespers-page)
                          ("compline" compline-page))]
         [jar           (new list-cookie-jar%)]
         [session-with-cookies (make-session #:cookie-jar jar)]
         [s (parameterize ([current-session session-with-cookies])
              (post options-page #:form `((lang . "en")
                                          (giorno . ,(number->string day))
                                          (mese . ,(number->string month))
                                          (anno . ,(number->string year))))
              (response-body (get office-page)))])
    (~a s)))


(define (parse-ibrev-hymn s)
  "Create a hymn string for LaTeX. TODO refactor to accommodate multiple hymns."
  (let* ([s (regexp-match "HYMN</span><br /><br />(.*)<span class=\"citazione\">(.*)</span></p><p><span class=\"capolettera_piccolo\">PSALMODY</span>" s)]
         [hymn (second s)]
         [citation (third s)]
         [hymn (string-replace hymn "<br /><br />" "@@")]
         [hymn (string-replace hymn "<br />" "\\\\\\\\\n")]
         [hymn (string-replace hymn "@@" "\n\n")]
         [hymn (string-trim
                    (with-output-to-string
                      (λ () (system (format "unescapehtml \"~a\"" hymn)))))]
         [citation (string-replace citation "<br />" "\n\n")]
         [citation (string-replace citation "<em>" "\\emph{")]
         [citation (string-replace citation "</em>" "}")]
         [citation (string-trim
                    (with-output-to-string
                      (λ () (system (format "unescapehtml \"~a\"" citation)))))]
         )
    (format "\\hymn\n\n\\begin{verse}\n~a\n\\end{verse}\n\n\\begin{hymnsource}\n~a\n\\end{hymnsource}"
            (string-replace
             hymn "<a href=#alternatehymn>Alternate Hymn</a>\n\n" "")
            citation)))

(define (parse-ibrev-hymn2 s)
  "A rougher veresion. Create a hymn string for LaTeX. TODO refactor to accommodate multiple hymns."
  (let* ([s (regexp-match "HYMN</span>(.*)PSALMODY</span>" s)]
         [hymn (first s)]
         [hymn (string-replace hymn "<br /><br />" "@@")]
         [hymn (string-replace hymn "<br />" "\\\\\\\\\n")]
         [hymn (string-replace hymn "@@" "\n\n")]
         [hymn (string-replace hymn "<em>" "\\emph{")]
         [hymn (string-replace hymn "</em>" "}")]
         [hymn (string-trim
                    (with-output-to-string
                      (λ () (system (format "unescapehtml \"~a\"" hymn)))))])
    (format "\\hymn\n\n\\begin{verse}\n~a\n\\end{verse}\n\n\\begin{hymnsource}\n\n\\end{hymnsource}"
            hymn)))

(define (parse-ibrev-reading s)
  "Create a reading string for LaTeX"
  (let* ([s
          (regexp-match "READING</span><br /><span class=\"rubrica\">(.*?)</span><br /><br />(.*?)<br /><br /><span class=\"capolettera_piccolo\">RESPONSORY" s)]
         [readcite
          (string-trim
           (with-output-to-string
             (λ () (system (format "unescapehtml \"~a\"" (second s))))))]
         [readcite (string-replace readcite "-" "--")]
         [readtxt
          (string-trim
           (with-output-to-string
             (λ () (system (format "unescapehtml \"~a\"" (third s))))))]
         [readtxt (string-replace readtxt "<br /><br />" "@@")]
         [readtxt (string-replace readtxt "<br />" "\\\\\n")]
         [readtxt (string-replace readtxt "@@" "\n\n")])
    (format "\\reading{~a}\n\n\\lettrine{~a}{}~a"
            readcite
            (substring readtxt 0 1)
            (substring readtxt 1))))

(define (parse-ibrev-responsory s)
    "Create a responsory string for LaTeX"
  (let* ([s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                           "\n{\\color{red}---\\thinspace}")]
         [s (regexp-match "RESPONSORY</span><br /><br />(.*?)<br /><br />(.*?)<br /><br />(.*?)<br /><br />" s)])
    (format "\\responsory\n\n\\begin{hangpar}\n~a\n\n\\medskip ~a\n\n\\medskip ~a\n\\end{hangpar}"
            (string-replace (second s) "<br />" "\n")
            (string-replace (third s) "<br />" "\n")
            (string-replace (fourth s) "<br />" "\n"))))

(define (parse-ibrev-intercessions s)
  "Create an intercessions string for LaTeX"
  (let* ([s (second (regexp-match "INTERCESSIONS</span><br /><br />(.*?)<br /><br /><span class=\"capolettera_piccolo\">THE LORD" s))]
         [s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                            "{\\color{red}---\\thinspace}")]
         [s (string-trim
             (with-output-to-string
               (λ () (system (format "unescapehtml \"~a\"" s)))))]
         [s (string-replace s "<em>" "\\emph{")]
         [s (string-replace s "</em>" "}")]
         [s (regexp-split "<br /><br />" s)])
    (let ([res ""])
      (for ([p (cdr s)])
        (set! res (string-append
                   res
                   "\n\n\\medskip "
                   (string-join (reverse (cdr (reverse (string-split p "<br />")))) "\n\n"))))
      (format "\\intercessions\\indent\n\n\\begin{hangpar}\n\n~a\n\n~a\n\n\\end{hangpar}"
              (string-replace (first s) "<br />" "\\\\\n")
              (string-trim res)))))

(define (parse-ibrev-prayer s)
  (let* ([s (second (regexp-match "CONCLUDING PRAYER</span><br /><br />(.*?)<br /><br /><span class=\"capolettera_piccolo\">DISMISSAL" s))]
         [prayers (regexp-split "<br /><br /><span class=\"rubrica\">Or:</span><br /><br />" s)])
    (format "\\prayer\n\n\\setlength{\\vleftmargin}{\\prayerleftmargini}\n\n~a\n\n\\setlength{\\vleftmargin}{\\defleftmargini}"
            (string-join (map parse-ibrev-prayer-aux prayers) "\n\n\\noindent{\\color{red}Or:}\n\n"))))

(define (parse-ibrev-prayer-aux s)
  "Create a concluding prayer string for LaTeX. Refactor to allow for alternate prayers. (split on `Or:`)"
  (let* ([s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                            "{\\color{red}---\\thinspace}")]
         [s (string-replace s "<br />" "\\\\\n")]
         )
    (format "\\begin{verse}\n~a\n\\end{verse}"
            s)))


(define (create-files dir stem month day year)
  "Where DIR is directory (e.g. /home/ryan/scores/like-burning-incense/offices/saintsAndSolemnities/0101_Mary,_Mother_of_God/
STEM is something like 1-Lauds (two values separated by -)
MONTH is the integer month
DAY is the integer day
YEAR is the integer year"
  (let* ([office (second (string-split stem "-"))]
         [s (get-single-office month day year office)]
         [hymn (parse-ibrev-hymn2 s)]
         [reading (parse-ibrev-reading s)]
         [responsory (parse-ibrev-responsory s)]
         [intercessions (parse-ibrev-intercessions s)]
         [prayer (parse-ibrev-prayer s)]
         [cantortexfile (string->path (format "~a~a-Cantor.tex" dir stem))])

    ;; create the files, overwriting if they exist already
    (for ([cur (list "Hymn" "Reading" "Responsory" "Intercessions" "Prayer")]
          [val (list hymn reading responsory intercessions prayer)])
      (display-to-file
       val
       (string->path (format "~a~a-~a.tex"
                             dir stem cur))
       #:exists 'replace))

    ;; update the cantor tex file
    (let* ([cantortexfileparts (regexp-match #px"([% ]+ Begin Ant1.*[% ]+ End Ant1).*([% ]+ Begin Ant2.*[% ]+ End Ant2).*([% ]+ Begin Ant3.*[% ]+ End Ant3).*([% ]+ Begin Ant4.*[% ]+ End Ant4)"
                                             (file->string cantortexfile))])
      (unless cantortexfileparts
        (set! cantortexfileparts (regexp-match #px"([% ]+ Begin Ant1.*[% ]+ End Ant1).*([% ]+ Begin Ant2.*[% ]+ End Ant2).*([% ]+ Begin Ant3.*[% ]+ End Ant3)"
                                               (file->string cantortexfile))))
      (display-to-file (format "\\opt{hymn}{\\input{~a~a-Hymn.tex}}\n\n\\opt{psalmody-heading}{\\psalmody}\n\n~a\n\n~a\n\n~a\n\n\\opt{reading}{\\input{~a~a-Reading.tex}}\n\n\\opt{responsory}{\\input{~a~a-Responsory.tex}}\n\n\\opt{intercessions}{\\input{~a~a-Intercessions.tex}}\n\n~a\n\n\\opt{prayer}{\\input{~a~a-Prayer.tex}}"
                               dir stem
                               (second cantortexfileparts)
                               (third cantortexfileparts)
                               (fourth cantortexfileparts)
                               dir stem
                               dir stem
                               dir stem
                               (if (> (length cantortexfileparts) 4)
                                   (fifth cantortexfileparts)
                                   "")
                               dir stem)
                       cantortexfile
                       #:exists 'replace))))

(create-files "/home/ryan/scores/like-burning-incense/offices/saintsAndSolemnities/0725_James_the_Greater/" "1-Lauds" 7 25 2025)
