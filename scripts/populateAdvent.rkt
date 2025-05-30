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

(define advent-season
  '(
    ;; ("AA0" 11 26 2022)
    ;; ("AA1" 11 27 2022)
    ;; ("AA2" 11 28 2022)
    ;; ("AA3" 11 29 2022)
    ;; ("AA4" 12 6 2023)
    ;; ("AA5" 12 1 2022)
    ;; ("AA6" 12 2 2022)
    ;; ("AA7" 12 9 2023)
    ;; ("AB0" 12 3 2022)
    ;; ("AB1" 12 4 2022)
    ;; ("AB2" 12 5 2022)
    ;; ("AB3" 12 6 2022)
    ;; ("AB4" 12 4 2024)
    ;; ("AB5" 12 5 2024)
    ;; ("AB6" 12 9 2022)
    ;; ("AB7" 12 10 2022)
    ;; ("AC0" 12 10 2022)
    ;; ("AC1" 12 11 2022)
    ;; ("AC2" 12 18 2023)
    ;; ("AC3" 12 19 2022)
    ;; ("AC4" 12 20 2022)
    ;; ("AC5" 12 15 2022)
    ;; ("AC6" 12 16 2022)
    ;; ("AC7" 12 17 2022)
    ;; ("AD0" 12 17 2022)
    ;; ("AD1" 12 18 2022)
    ;; ("AD2" 12 19 2022)
    ;; ("AD3" 12 20 2022)
    ;; ("AD4" 12 21 2022)
    ;; ("AD5" 12 22 2022)
    ;; ("AD6" 12 23 2022)
    ;; ("AD7" 12 24 2022)
    ("17Dec" 12 17 2022)
    ("18Dec" 12 18 2022)
    ("19Dec" 12 19 2022)
    ("20Dec" 12 20 2022)
    ("21Dec" 12 21 2022)
    ("22Dec" 12 22 2022)
    ("23Dec" 12 23 2022)
    ("24Dec" 12 24 2022)
    
    ))

;; ;;;; don't need these to find the previous day's vespers
;; (define (next-day month day [year 2022])
;;   (let ([dt
;;          (seconds->date
;;           (+ (date->seconds (date 0 0 12 day month year 0 0 #f 0))
;;              (* 60 60 24)))])
;;     (list (date-month dt) (date-day dt) (date-year dt))))

;; (define (prev-day month day [year 2022])
;;   (let ([dt
;;          (seconds->date
;;           (- (date->seconds (date 0 0 12 day month year 0 0 #f 0))
;;              (* 60 60 24)))])
;;     (list (date-month dt) (date-day dt) (date-year dt))))


(for ([a advent-season])
  (let*-values ([(office-week-day mon day year)
                 (apply values (cons (first a) (map number->string (cdr a))))]
                [(jar)
                 (new list-cookie-jar%)]
                [(session-with-cookies)
                 (make-session #:cookie-jar jar)]
                [(office-week) (substring office-week-day 0 2)]
                [(office-day) (substring office-week-day 2 3)]
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
                "select cur_contents from ibrev_html where cur_day = $1 and cur_office = $2"
                office-week-day title))
          (display (format "Processing ~a-~a\n" office-week-day title))
          (sleep 2)
          (query-exec
           pgc
           "insert into ibrev_html values ($1, $2, $3, $4)"
           "WeekBeforeChristmas" office-week-day title (~a (response-body (get page))))
          )))))
