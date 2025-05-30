#!/usr/bin/racket
#lang racket/gui

(require db)
(define pgc (postgresql-connect
             #:user "ryan"
             #:database "offices"
             #:password "art"
             ))

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

(define s
  (query-list pgc
         "select cur_contents from ibrev_html where cur_week = 'D' and cur_day = '2' and cur_office = 'Lauds'"))


(display (parse-ibrev-prayer (~a s)))


;; (define (offices-in-psalter)
;;   "Return list of titles of offices in 4-week psalter.
;; E.g. '(\"A0-Vespers\" \"A1-Matins\") etc."
;;   (let ([res '()])
;;     (for ([w "ABCD"])
;;       (for ([d "0111122223333444455556666777"]
;;             [o (in-cycle '("Vespers" "Matins" "Lauds" "Daytime"))])
;;         (set! res (cons (list (string w) (string d) o) res))))
;;     (reverse res)))

;; (define lauds-vespers-OT
;;   (filter (λ (x) (regexp-match? "(Lauds|Vespers)" (third x)))
;;           (offices-in-psalter)))

;; (for ([o (take lauds-vespers-OT 1)])
;;   (subprocess "parseib ~a" (format "~a~a-~a"
;;                    (first o)
;;                    (second o)
;;                    (third o)))
;;   (println (format "~a~a-~a"
;;                    (first o)
;;                    (second o)
;;                    (third o))))


;; ;; (define (double-check)
;; ;;   (let ([offices (offices-in-psalter)])
;; ;;     (for ([o offices])
;; ;;       (let ([s (query-value pgc
;; ;;                             "select cur_contents from ibrev_raw where cur_week = $1 and cur_day = $2 and cur_office = $3"
;; ;;                             (first o) (second o) (third o))])
;; ;;         ;; (when (string=? (string-append (first o) (second o) (third o))
;; ;;         ;;                 "A5Daytime")
;; ;;         ;;   (display s))
;; ;;         (match (third o)
;; ;;           ((or "Lauds" "Vespers")
;; ;;            (displayln (format "(~a~a-~a) ~a\n(~a~a-~a) Reading: ~a"
;; ;;                               (first o) (second o) (third o)
;; ;;                               (second (regexp-match "(Ant. 1 .*?)\n\n" s))
;; ;;                               (first o) (second o) (third o)
;; ;;                               (second (regexp-match "READING\n(.*?)\n\n" s)))))
;; ;;           ("Daytime" (displayln (format "(~a~a-~a) ~a"
;; ;;                                         (first o) (second o) (third o)
;; ;;                                         (second (regexp-match "PSALMODY\n\nGo to the Complementary Psalmody\n\n(Ant.? 1.?.*?)\n\n" s)))))
;; ;;           (_ (displayln (format "(~a~a-~a) ~a"
;; ;;                                  (first o) (second o) (third o)
;; ;;                                  (second (regexp-match "^.*?(Ant. 1 .*?)\n\n" s))
;; ;;                                  ))))))))
