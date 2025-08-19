#lang racket

(require net/http-easy
         net/cookies
         net/url
         racket/class)

(define (get-single-office day month year office)
  (let ([options-page "https://www.ibreviary.com/m2/opzioni.php"]
        [lauds-page "https://www.ibreviary.com/m2/breviario.php?s=lodi"]
        [toc-page "https://www.ibreviary.com/m2/breviario.php"])
    0))

(define options-page "https://www.ibreviary.com/m2/opzioni.php")
(define lauds
  "https://www.ibreviary.com/m2/breviario.php?s=lodi")
(define vespers
  "https://www.ibreviary.com/m2/breviario.php?s=vespri")
(define tocpage
  "https://www.ibreviary.com/m2/breviario.php")

(define jar (new list-cookie-jar%))
(define session-with-cookies
  (make-session #:cookie-jar jar))

(parameterize ([current-session session-with-cookies])
  (post options-page #:form '((lang . "en")
                              (giorno . "15")
                              (mese . "8")
                              (anno . "2025")))
  (display-to-file (response-body (get lauds))
                   (string->path "/home/ryan/scores/like-burning-incense/scripts/test.html")
                   #:exists 'replace))
