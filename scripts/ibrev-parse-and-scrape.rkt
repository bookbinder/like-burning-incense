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
  (let* ([s (regexp-match "HYMN</span><br /><br />(.*?)<span class=\"citazione\">(.*?)PSALMODY" s)]
         [hymn (second s)]
         [hymn (string-trim
                    (with-output-to-string
                      (λ () (system (format "unescapehtml \"~a\"" hymn)))))]
         
         [hymn (string-replace hymn "<a href=#alternatehymn>Alternate Hymns</a>" "")]
         [hymn (second (regexp-match "^(?:<[^>]*?>)*(.*)" hymn))]
         [hymn (string-replace hymn "<br /><br />" "@@")]
         [hymn (string-replace hymn "<br />" "\\\\\n")]
         [hymn (string-replace hymn "@@" "\n\n")]
         [hymn (string-trim hymn "\n")]
         [charcount (λ (x) (for/sum ([ch x])
                             (if (char=? ch #\\) 0 1)))]
         [versewidth (let ([tmp (sort (string-split hymn "\n")
                                      (λ (a b)
                                        (> (charcount a) (charcount b))))])
                       (string-trim (first tmp) "\\" #:repeat? #t))]
         [citation (third s)]
         [citation (string-trim
                    (with-output-to-string
                      (λ () (system (format "unescapehtml \"~a\"" citation)))))]
         [citation (regexp-replace "^.*?or (Mode .*)" citation "\\1")]
         [citation (string-replace citation "<em>" "\\emph{")]
         [citation (string-replace citation "</em>" "}")]
         [citation (string-replace citation "<br />" "\n\n")]
         [citation (second (regexp-match "(.*?)(?:<[^>]*?>)*$" citation))]
         )

    (format "\\hymn\n\n\\settowidth{\\versewidth}{~a}\n\n\\begin{verse}[\\versewidth]\n~a\\end{verse}\n\n\\begin{hymnsource}\nTune: ~a\n\\end{hymnsource}"
    versewidth hymn citation
    )))

(define (parse-ibrev-hymn-bak2 s)
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

(define (parse-ibrev-hymn-bak1 s)
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
          (regexp-match "READING *</span> *<br /> *<span class=\"rubrica\">(.*?)</span><br /><br />(.*?)(?:<[^>]>)*RESPONSORY" s)]
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
         [readtxt (string-replace readtxt "@@" "\n\n")]
         [readtxt (string-replace readtxt "\n\n<span class=capolettera_piccolo>" "")]
         )
    (format "\\reading{~a}\n\n\\lettrine{~a}{}~a"
            readcite
            (substring readtxt 0 1)
            (substring readtxt 1))))

(define (parse-ibrev-responsory s)
    "Create a responsory string for LaTeX"
  (let* ([s (regexp-replace* #px"<span class[^>]*?>&mdash; *</span> *" s "\n{\\\\color{red}---\\\\thinspace }")]
         ;; [s (string-trim
         ;;     (with-output-to-string
         ;;       (λ () (system (format "unescapehtml \"~a\"" s)))))]
         [s (regexp-match "RESPONSORY(?:<[^>]>)*(.*?)<br /><br />(.*?)<br /><br />(.*?)<br /><br />" s)])
    (format "\\responsory\n\n\\begin{hangpar}\n~a\n\n\\medskip ~a\n\n\\medskip ~a\n\\end{hangpar}"
            (string-replace (string-replace (second s) "<br />" "\n") "</span>" "")
            (string-replace (third s) "<br />" "\n")
            (string-replace (fourth s) "<br />" "\n"))))

(define (parse-ibrev-intercessions s)
  "Create an intercessions string for LaTeX"
  (let* ([s (second (regexp-match "INTERCESSIONS</span><br /><br />(.*?)(?:<[^>]>)*THE LORD" s))]
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
  (let* ([s (string-trim
           (with-output-to-string
             (λ () (system (format "unescapehtml \"~a\"" s)))))]
         [s (second (regexp-match "CONCLUDING PRAYER</span><br /><br />(.*?)(?:<[^>]>)*DISMISSAL" s))]
         [prayers (regexp-split "<br /><br /><span class=\"rubrica\">Or:</span><br /><br />" s)])
    (format "\\prayer\n\n\\setlength{\\vleftmargin}{\\prayerleftmargini}\n\n~a\n\n\\setlength{\\vleftmargin}{\\defleftmargini}"
            (string-join (map parse-ibrev-prayer-aux prayers) "\n\n\\noindent{\\color{red}Or:}\n\n"))))

(define (parse-ibrev-prayer-aux s)
  "Create a concluding prayer string for LaTeX. Refactor to allow for alternate prayers. (split on `Or:`)"
  (let* ([s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                            "{\\color{red}---\\thinspace}")]
         [s (string-replace s "<br />" "\\\\\n")]
         [s (string-replace s "Amen.\\\\\n\\\\" "Amen.")]
         [s (regexp-replace #px"<span[^>]*>" s "")]
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
         [hymn (parse-ibrev-hymn s)]
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

(define advent-sources
  '(
    ;; ("AA0-Vespers" 11 29 2025)
    ;; ("AA1-Lauds" 11 30 2025)
    ;; ("AA1-Vespers" 11 30 2025)
    ;; ("AA2-Lauds" 12 1 2025)
    ;; ("AA2-Vespers" 12 1 2025)
    ;; ("AA3-Lauds" 12 2 2025)
    ;; ("AA3-Vespers" 12 2 2025)
    ;; ("AA4-Lauds" 12 4 2024)
    ;; ("AA4-Vespers" 12 4 2024)
    ;; ("AA5-Lauds" 12 5 2024)
    ;; ("AA5-Vespers" 12 5 2024)
    ;; ("AA6-Lauds" 12 6 2024)
    ;; ("AA6-Vespers" 12 6 2024)
    ;; ("AA7-Lauds" 12 6 2025)
    ;; ("AB0-Vespers" 12 6 2025)
    ;; ("AB1-Lauds" 12 7 2025)
    ;; ("AB1-Vespers" 12 7 2025)
    ;; ("AB2-Lauds" 12 11 2023)
    ;; ("AB2-Vespers" 12 11 2023)
    ;; ("AB3-Lauds" 12 9 2025)
    ;; ("AB3-Vespers" 12 9 2025)
    ;; ("AB4-Lauds" 12 10 2025)
    ;; ("AB4-Vespers" 12 10 2025)
    ;; ("AB5-Lauds" 12 11 2025)
    ;; ("AB5-Vespers" 12 11 2025)
    ;; ("AB6-Lauds" 12 15 2023)
    ;; ("AB6-Vespers" 12 15 2023)
    ;; ("AB7-Lauds" 12 16 2023)
    ;; ("AC0-Vespers" 12 16 2023)
    ;; ("AC1-Lauds" 12 14 2025)
    ;; ("AC1-Vespers" 12 14 2025)
    ;; ("AC2-Lauds" 12 15 2025)
    ;; ("AC2-Vespers" 12 15 2025)
    ;; ("AC3-Lauds" 12 16 2025)
    ;; ("AC3-Vespers" 12 16 2025)
    ;; ("AC4-Lauds" 12 15 2021)
    ;; ("AC4-Vespers" 12 15 2021)
    ;; ("AC5-Lauds" 12 15 2022)
    ;; ("AC5-Vespers" 12 15 2022)
    ;; ("AC6-Lauds" 12 16 2022)
    ;; ("AC6-Vespers" 12 16 2022)
    ;; ("Dec17-Lauds" 12 17 2024)
    ;; ("Dec17-Vespers" 12 17 2025)
    ;; ("Dec18-Lauds" 12 18 2025)
    ;; ("Dec18-Vespers" 12 18 2025)
    ;; ("Dec19-Lauds" 12 19 2025)
    ;; ("Dec19-Vespers" 12 19 2025)
    ;; ("Dec20-Lauds" 12 20 2025)
    ;; ("Dec20-Vespers" 12 20 2024)
    ;; ("Dec21-Lauds" 12 21 2024)
    ;; ("Dec21-Vespers" 12 21 2023)
    ;; ("Dec22-Lauds" 12 22 2023)
    ;; ("Dec22-Vespers" 12 22 2023)
    ;; ("Dec23-Lauds" 12 23 2023)
    ;; ("Dec23-Vespers" 12 23 2024)
    ;; ("Dec24-Lauds" 12 24 2025)
    ))

(let ([dir "/home/ryan/scores/like-burning-incense/offices/advent/"])
  (for ([x advent-sources])
    (displayln (format "Processing ~a..." (first x)))
    (apply create-files (cons dir x))))

;; (create-files
;;  "/home/ryan/scores/like-burning-incense/offices/advent/"
;;  "AA7-Lauds"
;;  12
;;  6
;;  2025)

;; (displayln
;;  (parse-ibrev-prayer (file->string "/home/ryan/scripts/racket/test.html")))
