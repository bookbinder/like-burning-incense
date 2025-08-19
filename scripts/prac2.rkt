#lang racket

(define (parse-ibrev-prayer s)
  (let* (
         ;; [s (string-trim
         ;;     (with-output-to-string
         ;;       (λ () (system (format "unescapehtml \"~a\"" s)))))]
         [s (second (regexp-match "CONCLUDING PRAYER(?:<[^>]> *)*(.*?)(?:<[^>]>)*DISMISSAL" s))]
         [prayers (regexp-split "(?:<[^>]> *)*Or:(?:<[^>]>)*" s)])
    (format "\\prayer\n\n\\setlength{\\vleftmargin}{\\prayerleftmargini}\n\n~a\n\n\\setlength{\\vleftmargin}{\\defleftmargini}"
            (string-join (map parse-ibrev-prayer-aux prayers) "\n\n\\noindent{\\color{red}Or:}\n\n"))))

(define (parse-ibrev-prayer-aux s)
  "Create a concluding prayer string for LaTeX. Refactor to allow for alternate prayers. (split on `Or:`)"
  (let* ([s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                            "{\\color{red}---\\thinspace}")]
         [s (string-replace s "</span>" "")]
         [s (string-replace s "<br />" "\\\\\n")]

         [s (string-replace s "Amen.\\\\\n\\\\" "Amen.")]
         [s (regexp-replace #px"<span[^>]*>" s "")]
         [s (regexp-replace #px" *\n\\\\\\\\\n" s "\n")]
         [s (regexp-replace #px"^\\\\\\\\" s "")]
         )
    (format "\\begin{verse}\n~a\n\\end{verse}"
            s)))

(displayln (parse-ibrev-prayer (file->string "test.html")))
