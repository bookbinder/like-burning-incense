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

(define lenten-season
  '(
    ("AshWed" 11 26 2022)
    ("ThursAfterAshWed" 11 27 2022)
    ("FriAfterAshWed" 11 28 2022)
    ("SatAfterAshWed" 11 29 2022)
    ("LA0" 12 3 2022)
    ("LA1" 12 4 2022)
    ("LA2" 12 5 2022)
    ("LA3" 12 6 2022)
    ("LA4" 12 4 2024)
    ("LA5" 12 5 2024)
    ("LA6" 12 9 2022)
    ("LA7" 12 10 2022)

    ("LB0" 12 3 2022)
    ("LB1" 12 4 2022)
    ("LB2" 12 5 2022)
    ("LB3" 12 6 2022)
    ("LB4" 12 4 2024)
    ("LB5" 12 5 2024)
    ("LB6" 12 9 2022)
    ("LB7" 12 10 2022)
    ("LC0" 12 10 2022)
    ("LC1" 12 11 2022)
    ("LC2" 12 18 2023)
    ("LC3" 12 19 2022)
    ("LC4" 12 20 2022)
    ("LC5" 12 15 2022)
    ("LC6" 12 16 2022)
    ("LC7" 12 17 2022)
    ("LD0" 12 17 2022)
    ("LD1" 12 18 2022)
    ("LD2" 12 19 2022)
    ("LD3" 12 20 2022)
    ("LD4" 12 21 2022)
    ("LD5" 12 22 2022)
    ("LD6" 12 23 2022)
    ("LD7" 12 24 2022)

    
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


(for ([a lenten-season])
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
                "select cur_contents from ibrev_html where cur_week = $1 and cur_day = $2 and cur_office = $3"
                office-week office-day title))
          (display (format "Processing ~a~a-~a\n" office-week office-day title))
          (sleep 2)
          (query-exec
           pgc
           "insert into ibrev_html values ($1, $2, $3, $4)"
           office-week office-day title (~a (response-body (get page))))
          )))))
