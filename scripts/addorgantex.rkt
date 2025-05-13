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
         [organtexfile (string->path
                        (format "~a/~a-~a-Organ.tex" dir day office))]
         [organfiletxt (file->string "/home/ryan/scores/like-burning-incense/skel/Organ.tex")])
    (set! organfiletxt (string-replace organfiletxt "A4" day))
    (set! organfiletxt (string-replace organfiletxt "Lauds" office))
    (when (string=? office "Vespers")
      (set! organfiletxt (string-replace organfiletxt "Benedictus" "Magnificat"))
      (set! organfiletxt (string-replace organfiletxt "Ben" "Mag")))
    (display-to-file organfiletxt organtexfile #:exists 'replace)))
