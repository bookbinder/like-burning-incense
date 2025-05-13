#lang racket

(define files
  (filter
   (lambda (p)
     (regexp-match? #rx"-Cantor.tex$" p))
   (directory-list
    (string->path
     "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/"))))

(for ([f files])
  (let* ([fsplit (string-split (path->string f) "-")]
         [day (first fsplit)]
         [office (second fsplit)]
         [dir "/home/ryan/scores/like-burning-incense/offices/ordinaryTime"]
         [readingsfile (string->path
                        (format "~a/~a-~a-Reading.tex" dir day office))]
         [responsoryfile (string->path
                        (format "~a/~a-~a-Responsory.tex" dir day office))]
         [intfile (string->path
                   (format "~a/~a-~a-Intercessions.tex" dir day office))])
    (display-to-file "" readingsfile #:exists 'replace)
    ;; (display-to-file "" responsoryfile)
    ;; (display-to-file "" intfile)
    ))
