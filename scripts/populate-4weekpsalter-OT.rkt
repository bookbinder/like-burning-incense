#!/usr/bin/racket
#lang racket

(require racket/date
         net/http-easy
         net/cookies
         net/url
         racket/class
         db)

(define pgc (postgresql-connect
             #:user "ryan"
             #:database "offices"
             #:password "art"
             ))

(define 4weekpsalterOT
  '(
    ;; ("A0" 2 8 2025)
    ;; ("A1" 2 9 2025)
    ;; ("A2" 7 28 2025)
    ("A3" 1 14 2025)
    ;; ("A4" 7 30 2025)
    ;; ("A5" 9 25 2025)
    ;; ("A6" 10 24 2025)
    ;; ("A7" 8 2 2025)
    ;; ("B0" 8 2 2025)
    ;; ("B1" 8 3 2025)
    ;; ("B2" 9 1 2025)
    ;; ("B3" 9 2 2025)
    ;; ("B4" 10 29 2025)
    ;; ("B5" 9 4 2025)
    ;; ("B6" 10 31 2025)
    ;; ("B7" 9 6 2025)
    ;; ("C0" 9 6 2025)
    ;; ("C1" 9 7 2025)
    ;; ("C2" 11 3 2025)
    ;; ("C3" 8 12 2025)
    ;; ("C4" 9 10 2025)
    ;; ("C5" 9 11 2025)
    ;; ("C6" 9 12 2025)
    ;; ("C7" 10 11 2025)
    ;; ("D0" 10 11 2025)
    ;; ("D1" 10 12 2025)
    ;; ("D2" 10 13 2025)
    ;; ("D3" 10 14 2025)
    ;; ("D4" 7 24 2025)
    ;; ("D5" 10 16 2025)
    ;; ("D6" 2 7 2025)
    ;; ("D7" 8 23 2025)
    ))

;; ;;;; don't need these to find the previous day's vespers
;; (define (next-day month day [year 2025])
;;   (let ([dt
;;          (seconds->date
;;           (+ (date->seconds (date 0 0 12 day month year 0 0 #f 0))
;;              (* 60 60 24)))])
;;     (list (date-month dt) (date-day dt) (date-year dt))))

;; (define (prev-day month day [year 2025])
;;   (let ([dt
;;          (seconds->date
;;           (- (date->seconds (date 0 0 12 day month year 0 0 #f 0))
;;              (* 60 60 24)))])
;;     (list (date-month dt) (date-day dt) (date-year dt))))


(for ([a 4weekpsalterOT])
  (let*-values ([(office-week-day mon day year)
                 (apply values (cons (first a) (map number->string (cdr a))))]
                [(jar)
                 (new list-cookie-jar%)]
                [(session-with-cookies)
                 (make-session #:cookie-jar jar)]
                [(office-week) (substring office-week-day 0 1)]
                [(office-day) (substring office-week-day 1 2)]
                [(titlepage)
                 "https://www.ibreviary.com/m2/breviario.php"]
                [(optionspage)
                 "https://www.ibreviary.com/m2/opzioni.php"]
                [(matinspage)
                 "https://www.ibreviary.com/m2/breviario.php?s=ufficio_delle_letture"]
                [(laudspage)
                 "https://www.ibreviary.com/m2/breviario.php?s=lodi"]
                [(daytimepage)
                 "https://www.ibreviary.com/m2/breviario.php?s=ora_media"]
                [(vesperspage)
                 "https://www.ibreviary.com/m2/breviario.php?s=vespri"]
                [(complinepage)
                 "https://www.ibreviary.com/m2/breviario.php?s=compieta"])
    (parameterize ([current-session session-with-cookies])
      (post optionspage #:form `((lang . "en")
                                  (giorno . ,day)
                                  (mese . ,mon)
                                  (anno . ,year)))
      
      (for ([title '("Matins" "Lauds" "Daytime" "Vespers" "Compline")]
            [page (list matinspage laudspage daytimepage
                        vesperspage complinepage)])
        (when (null?
               (query-list
                pgc
                "select cur_contents from ibrev_html where cur_week = $1 and cur_day = $2 and cur_office = $3"
                office-week office-day title))
          (display (format "Processing ~a~a-~a\n" office-week office-day title))
          (sleep 2)
          (query-exec
           pgc
           "insert into ibrev_html values ($1, $2, $3, $4)"
           office-week office-day title (~a (response-body (get page))))
          )))))
