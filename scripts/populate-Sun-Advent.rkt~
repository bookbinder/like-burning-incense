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

(define sundaysOT
  '(
    ;; (2 1 19 2025)
    ;; (3 1 26 2025)
    ;; (4 1 28 2024)
    ;; (5 2 9 2025)
    ;; (6 2 16 2025)
    ;; (7 2 23 2025)
    ;; (8 3 2 2025)
    ;; (9 6 3 2035)
    (10 6 9 2024)
    ;; (11 6 16 2024)
    ;; (12 6 23 2024)
    ;; (13 6 30 2024)
    ;; (14 7 6 2025)
    ;; (15 7 13 2025)
    ;; (16 7 20 2025)
    ;; (17 7 27 2025)
    ;; (18 8 3 2025)
    ;; (19 8 10 2025)
    ;; (20 8 17 2025)
    ;; (21 8 24 2025)
    ;; (22 8 31 2025)
    ;; (23 9 7 2025)
    ;; (24 9 15 2024)
    ;; (25 9 21 2025)
    ;; (26 9 28 2025)
    ;; (27 10 5 2025)
    ;; (28 10 12 2025)
    ;; (29 10 19 2025)
    ;; (30 10 26 2025)
    ;; (31 11 3 2024)
    ;; (32 11 10 2024)
    ;; (33 11 16 2025)
    ;; ("Christ_the_King" 11 23 2025)
    ))

;; (day-in-cycle month day year)
(define 4weekpsalterOT
  '(
    ("A0" 2 8 2025)
    ("A1" 2 9 2025)
    ("A2" 7 28 2025)
    ("A3" 8 1 2025)
    ("A4" 7 30 2025)
    ("A5" 9 25 2025)
    ("A6" 10 24 2025)
    ("A7" 8 2 2025)
    ("B0" 8 2 2025)
    ("B1" 8 3 2025)
    ("B2" 9 1 2025)
    ("B3" 9 2 2025)
    ("B4" 10 29 2025)
    ("B5" 9 4 2025)
    ("B6" 10 31 2025)
    ("B7" 9 6 2025)
    ("C0" 9 6 2025)
    ("C1" 9 7 2025)
    ("C2" 11 3 2025)
    ("C3" 8 12 2025)
    ("C4" 9 10 2025)
    ("C5" 9 11 2025)
    ("C6" 9 12 2025)
    ("C7" 10 11 2025)
    ("D0" 10 11 2025)
    ("D1" 10 12 2025)
    ("D2" 10 13 2025)
    ("D3" 10 14 2025)
    ("D4" 7 24 2025)
    ("D5" 10 16 2025)
    ("D6" 2 7 2025)
    ("D7" 8 23 2025)
    ))

(define (next-day month day [year 2025])
  (let ([dt
         (seconds->date
          (+ (date->seconds (date 0 0 12 day month year 0 0 #f 0))
             (* 60 60 24)))])
    (list (date-month dt) (date-day dt) (date-year dt))))

(define (prev-day month day [year 2025])
  (let ([dt
         (seconds->date
          (- (date->seconds (date 0 0 12 day month year 0 0 #f 0))
             (* 60 60 24)))])
    (list (date-month dt) (date-day dt) (date-year dt))))


(for ([a sundaysOT])
  (let*-values ([(sun mon day year)
                 (apply values (cons (first a) (map number->string (cdr a))))]
                [(prevmon prevday prevyear)
                 (apply values (map number->string (prev-day (string->number mon) (string->number day) (string->number year))))]
                [(jar)
                 (new list-cookie-jar%)]
                [(session-with-cookies)
                 (make-session #:cookie-jar jar)]
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
                 "https://www.ibreviary.com/m2/breviario.php?s=compieta"]
                [(cur_sun)
                 (format "Sun~aOT" sun)])

    
    (sleep 2)

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
                "select cur_contents from ibrev_html where cur_week = $1 and cur_day = '1' and cur_office = $2"
                cur_sun title))
          (display (format "Processing ~a1-~a\n" cur_sun title))
          (query-exec
           pgc
           "insert into ibrev_html values ($1, $2, $3, $4)"
           cur_sun "1" title (~a (response-body (get page)))))))
    
    (parameterize ([current-session session-with-cookies])
      (post optionspage #:form `((lang . "en")
                                 (giorno . ,prevday)
                                 (mese . ,prevmon)
                                 (anno . ,prevyear)))

      (for ([title '("Vespers" "Compline")]
            [page (list vesperspage complinepage)])
        (when (null?
               (query-list
                pgc
                "select cur_contents from ibrev_html where cur_week = $1 and cur_day = '0' and cur_office = $2"
                cur_sun title))
          (display (format "Processing ~a0-~a\n" cur_sun title))
          (query-exec
           pgc
           "insert into ibrev_html values ($1, $2, $3, $4)"
           cur_sun "0" title (~a (response-body (get page))))))
      )))
