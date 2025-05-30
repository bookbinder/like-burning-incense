#lang racket

(require net/http-easy
         net/cookies
         net/url
         racket/class)

(define options-page
  "https://www.ibreviary.com/m2/opzioni.php")
(define lauds
  "https://www.ibreviary.com/m2/breviario.php?s=lodi")
(define tocpage
  "https://www.ibreviary.com/m2/breviario.php")

(define jar (new list-cookie-jar%))
(define session-with-cookies
  (make-session #:cookie-jar jar))

(parameterize ([current-session session-with-cookies])
  (post options-page #:form '((lang . "en")
                              (giorno . "29")
                              (mese . "6")
                              (anno . "2025")))
  (display-to-file (response-body (get lauds))
                   (string->path "/home/ryan/scripts/racket/test.html")
                   #:exists 'replace))




;; (response-status-code
;;  (post options-page #:form '((lang . "en")
;;                              (giorno . "12")
;;                              (mese . "3")
;;                              (anno . "2021"))))

;; (response-json
;;  (post options-page #:form '((lang . "en")
;;                              (giorno . "12")
;;                              (mese . "3")
;;                              (anno . "2021"))))

;; (response-body (get tocpage))

;; (call/input-url
;;  lauds
;;  get-pure-port
;;  port->string)

;; (call/input-url
;;  options-page
;;  (λ (url)
;;    (post-pure-port
;;     url
;;     #"{\"lang\":\"en\", \"giorno\":\"25\", \"mese\":\"10\", \"anno\":\"2021\"}"
;;     '("content-type: application/json; charset=utf-8")))
;;  read-json)

;; (call/input-url
;;  options-page
;;  (λ (url)
;;    (post-impure-port
;;     url
;;     (string->bytes/utf-8 (alist->form-urlencoded
;;                           (list (cons 'lang "en")
;;                                 (cons 'giorno "25")
;;                                 (cons 'mese "2")
;;                                 (cons 'anno "2021"))))
;;     '("content-type: application/x-www-form-urlencoded; charset=utf-8")))
;;  read-json)

;; (call/input-url
;;  options-page
;;  (λ (url)
;;    (post-impure-port
;;     url
;;     (string->bytes/utf-8 (alist->form-urlencoded
;;                           (list (cons 'lang "en")
;;                                 (cons 'giorno "25")
;;                                 (cons 'mese "2")
;;                                 (cons 'anno "2021"))))
;;     '("content-type: application/x-www-form-urlencoded; charset=utf-8"))))

(define (next-day month day [year 2025])
  (let ([dt
         (seconds->date
          (+ (date->seconds (date 0 0 12 day month year 0 0 #f 0))
             (* 60 60 24)))])
    (list (date-month dt) (date-day dt))))

(define (prev-day month day [year 2025])
  (let ([dt
         (seconds->date
          (- (date->seconds (date 0 0 12 day month year 0 0 #f 0))
             (* 60 60 24)))])
    (list (date-month dt) (date-day dt))))
