#lang racket

(define files
  (filter
   (lambda (p)
     (regexp-match? #rx"s-Cantor.lytex$" p))
   (directory-list
    (string->path
     "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/"))))

(for ([f files])
  (let* ([name (string-split (path->string f) "-")]
         [day (first name)]
         [office (second name)]
         [dir (string->path
               "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/")]
         [psalmtonedir (string->path
                        "/home/ryan/scores/like-burning-incense/psalmtones/notes/")]
         [cantortexfile (string->path
                         (format "~a/~a-~a-Cantor.tex" dir day office))]
         [ant1txt (file->string
                   (format "~a/notes/~a-~a-1-Ant.ily" dir day office))]
         [ant2txt (file->string
                   (format "~a/notes/~a-~a-2-Ant.ily" dir day office))]
         [ant3txt (file->string
                   (format "~a/notes/~a-~a-3-Ant.ily" dir day office))]
         [gospFile (format "~a/notes/~a-~a-~a-Ant.ily"
                           dir day office
                           (if (string=? office "Lauds") "Ben" "Mag"))]
         [ant4txt (if (file-exists? (string->path gospFile))
                      (file->string gospFile)
                      #f)]
         [psalm1 (second
                  (or (regexp-match "psalmnum = \"(.*?)\"" ant1txt)
                      (list "Not found" "Not found")))]
         [psalm2 (second
                  (or (regexp-match "psalmnum = \"(.*?)\"" ant2txt)
                      (list "Not found" "Not found")))]
         [psalm3 (second
                  (or (regexp-match "psalmnum = \"(.*?)\"" ant3txt)
                      (list "Not found" "Not found")))]
         [psalm4 (if ant4txt
                     (if (string=? office "Lauds")
                         "Benedictus"
                         "Magnificat")
                     #f)]
         [psalmtone1 (second (regexp-match "psalmtone = \"(.*?)\"" ant1txt))]
         [psalmtone2 (second (regexp-match "psalmtone = \"(.*?)\"" ant2txt))]
         [psalmtone3 (second (regexp-match "psalmtone = \"(.*?)\"" ant3txt))]
         [psalmtone4 (if ant4txt
                         (second (regexp-match "psalmtone = \"(.*?)\"" ant4txt))
                         #f)]
         [toneStruct1 (second
                       (regexp-match
                        "toneStruct = \"(.*?)\""
                        (file->string
                         (format "~a/~a-notes.ily" psalmtonedir psalmtone1))))]
         [toneStruct2 (second
                       (regexp-match
                        "toneStruct = \"(.*?)\""
                        (file->string
                         (format "~a/~a-notes.ily" psalmtonedir psalmtone2))))]
         [toneStruct3 (second
                       (regexp-match
                        "toneStruct = \"(.*?)\""
                        (file->string
                         (format "~a/~a-notes.ily" psalmtonedir psalmtone3))))]
         [toneStruct4 (if ant4txt
                          (second
                           (regexp-match
                            "toneStruct = \"(.*?)\""
                            (file->string
                             (format "~a/~a-notes.ily" psalmtonedir psalmtone4))))
                          #f)]
         [cantorfiletxt
          (file->string
           (string->path
            "/home/ryan/scores/like-burning-incense/skel/Cantor.tex"))])

    (set! cantorfiletxt
          (regexp-replace* "A4-Lauds" cantorfiletxt (format "~a-~a" day office)))
    (set! cantorfiletxt
          (regexp-replace* "%% \\\\" cantorfiletxt "\\\\"))
    (set! cantorfiletxt
          (regexp-replace* "psalm1" cantorfiletxt psalm1))
    (set! cantorfiletxt
          (regexp-replace* "psalm2" cantorfiletxt psalm2))
    (set! cantorfiletxt
          (regexp-replace* "psalm3" cantorfiletxt psalm3))
    (set! cantorfiletxt
          (regexp-replace* "psalm4" cantorfiletxt (or psalm4 "psalm4")))
    (set! cantorfiletxt
          (regexp-replace* "toneStruc1" cantorfiletxt toneStruct1))
    (set! cantorfiletxt
          (regexp-replace* "toneStruc2" cantorfiletxt toneStruct2))
    (set! cantorfiletxt
          (regexp-replace* "toneStruc3" cantorfiletxt toneStruct3))
    (set! cantorfiletxt
          (regexp-replace* "toneStruc4" cantorfiletxt (or toneStruct4
                                                          "toneStruc4")))
    (unless ant4txt
      (set! cantorfiletxt
            (regexp-replace "(.*)%%%% Begin Ant4.*" cantorfiletxt "\\1")))

    ;; (display cantorfiletxt)
    (display-to-file cantorfiletxt cantortexfile #:exists 'replace)

    ))
