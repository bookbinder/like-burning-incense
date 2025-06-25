#lang racket

(define root "/home/ryan/scores/like-burning-incense")

(define files (filter
               (λ (x) (regexp-match "ly$" x))
               (directory-list
                (string->path
                 (format "~a/hymns/" root)))))

(for ([f files])
  (let* ([stem (string-replace (path->string f) ".ly" "")]
         [hymntex (string->path (format "~a/hymns/~a.tex" root stem))]
         [skel (string-replace
                (if (regexp-match "cantor" stem)
                    (file->string
                     (format "~a/skel/Hymn-Music-Cantor.tex" root))
                    (file->string
                     (format "~a/skel/Hymn-Music-Organ.tex" root)))
                "<title>"
                stem)])
    (display-to-file skel hymntex #:exists 'replace)))
