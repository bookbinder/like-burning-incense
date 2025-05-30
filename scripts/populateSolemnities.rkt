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

(define solemnity
  '(
    ("Christmas" 12 25 2023)
    ("0101_Mary,_Mother_of_God" 1 1 2023)
    ("0319_Joseph" 3 19 2024)
    ("Annunciation" 3 25 2025)
    ("Pentecost" 6 8 2025)
    ("Trinity_Sunday" 6 15 2025)
    ("Corpus_Christi" 6 22 2025)
    ("Nativity_of_John_the_Baptist" 6 24 2025)
    ("Sacred_Heart" 6 27 2025)
    ("0629_Peter_and_Paul" 6 29 2023)
    ("0815_The_Assumption_of_Mary" 8 15 2023)
    ("All_Saints_Day" 11 1 2023)
    ("Christ_the_King" 11 26 2023)
    ("1208_Immaculate_Conception" 12 8 2023)
    
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


(for ([a solemnity])
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
                [(cur_sun) sun])

    
    (sleep 1)

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
