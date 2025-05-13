#lang racket

(define dir
  "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/")

(define files
  (filter
   (lambda (p) (regexp-match? #rx"-Cantor.tex$" p))
   (directory-list (string->path dir))))

(for ([f files])
  (let* ([fsplit (string-split (path->string f) "-")]
         [day (first fsplit)]
         [office (second fsplit)]
         [cantorfile (string->path (format "~a/~a" dir f))]
         [s (file->string cantorfile)])
    (set! s (string-replace s
                            "%%%% End Ant3"
                            (format
                             "%%%% End Ant3\n\n\\input{~a-~a-Reading.tex}\n\n\\input{~a-~a-Responsory.tex}"
                             day office day office)))
    (set! s (string-append s (format
                              "\n\\input{~a-~a-Intercessions.tex}"
                              day office)))

    ;; (display s)
    (display-to-file s cantorfile #:exists 'replace)
    ))
