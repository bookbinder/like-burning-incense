#lang racket

;;;; parse the scraped html strings from ibreviary.com

(define s (file->string "test.html"))
(define office
  (second (regexp-match "<span class=\"sezione\">(.*?)</span>" s)))

(define (parse-ibrev-hymn s)
  "Create a hymn string for LaTeX. TODO refactor to accommodate multiple hymns."
  (let* ([s (regexp-match "HYMN</span><br /><br />(.*)<br /><br /><span class=\"citazione\">(.*?)</span><a name=\"psalm\"" s)]
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
    readtxt))

(define (parse-ibrev-responsory s)
    "Create a responsory string for LaTeX"
  (let* ([s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                           "{\\color{red}---\\thinspace}")]
         [s (regexp-match "RESPONSORY</span><br /><br />(.*?)<br /><br />(.*?)<br /><br />(.*?)<br /><br />" s)])
    (format "\\responsory\n\n\\noindent ~a\n\n\\medskip\\noindent ~a\n\n\\medskip\\noindent ~a"
            (string-replace (second s) "<br />" "\\\\\n")
            (string-replace (third s) "<br />" "\\\\\n")
            (string-replace (fourth s) "<br />" "\\\\\n"))))

(define (parse-ibrev-intercessions s)
  "Create an intercessions string for LaTeX"
  (let* ([s (second (regexp-match "INTERCESSIONS</span><br /><br />(.*?)<br /><br /><span class=\"capolettera_piccolo\">THE LORD" s))]
         [s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                            "{\\color{red}---\\thinspace}")]
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
    (format "\\prayer\n\n\\setlength{\\leftmargini}{\\prayerleftmargini}\n\n~a\n\n\\setlength{\\leftmargini}{\\defleftmargini}"
            (string-join (map parse-ibrev-prayer-aux prayers) "\n\n{\\color{red}Or:}\n\n"))))

(define (parse-ibrev-prayer-aux s)
  "Create a concluding prayer string for LaTeX. Refactor to allow for alternate prayers. (split on `Or:`)"
  (let* ([s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                            "{\\color{red}---\\thinspace}")]
         [s (string-replace s "<br />" "\\\\\n")]
         )
    (format "\\begin{verse}\n~a\n\\end{verse}"
            s)))


(define (parse-lauds-vespers s)
  (let ([memorialp
         (regexp-match "In those places where this Memorial is observed" s)]
        [hymntxt (parse-ibrev-hymn s)]
        [readingtxt (parse-ibrev-reading s)]
        [responsorytxt (parse-ibrev-responsory s)]
        [intercessionstxt (parse-ibrev-intercessions s)]
        [prayertxt (parse-ibrev-prayer s)])
    (displayln prayertxt)))

(parse-lauds-vespers s)
