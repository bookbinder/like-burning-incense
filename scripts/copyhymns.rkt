#lang racket


(define rootdir "/home/ryan/scores/like-burning-incense/")
(define officedir (string-append rootdir "offices/ordinaryTime/"))

(for* ([week '("C" "D")]
       [day (range 1 8)])
  (let* ([cantortexfile
          (string->path (format "~a~a-Lauds-Cantor.tex"
                                officedir
                                (format "~a~a" week day)))]
         [cantortexstr
          (regexp-replace
           "(\\\\opt{hymn}{\\\\input{(.*?-Hymn).tex}})\n\n"
           (file->string cantortexfile)
           "\\1\n\\\\opt{hymnmusic}{\\\\input{\\2-Music.tex}}\n\n")]
         [hymnmusicfile
          (string->path (format "~a~a-Lauds-Hymn-Music.tex"
                                officedir
                                (format "~a~a" week day)))]
         [hymnmusicstr
          (file->string
           (string->path
            (format
             "~a~a-Lauds-Hymn-Music.tex"
             officedir
             (format "~a~a" (if (string=? week "C") "A" "B") day))))])
    (display-to-file hymnmusicstr hymnmusicfile #:exists 'replace)
    (display-to-file cantortexstr cantortexfile #:exists 'replace)
    ))




;; (unless (file-exists? cantorscorefile)
;;   (display-to-file cantorscoreskel cantorscorefile))

;; (unless (file-exists? organscorefile)
;;   (display-to-file organscoreskel organscorefile))

;; (unless (file-exists? notesfile)
;;   (display-to-file notesskel notesfile))

;; (unless (file-exists? lyricsfile)
;;   (display-to-file "" lyricsfile))

;; (unless (file-exists? hymnmusictexfile)
;;   (display-to-file hymnmusicskel hymnmusictexfile))

;; (display-to-file cantortexstr cantortexfile #:exists 'replace)
