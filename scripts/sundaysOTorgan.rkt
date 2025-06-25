#lang racket


(define (populate-sun-organ-tex)
  (let* ([dir "/home/ryan/scores/like-burning-incense/offices/sundaysOT/"]
         [skel (file->string (string->path (format "~a~a"
                                                   dir
                                                   "2Sun0-Vespers-Organ.tex")))])
    (for ([n (range 2 34)])
      (for ([office (list "Vespers" "Lauds" "Vespers")]
            [day (list "0" "1" "1")]
            [gospshort (list "Mag" "Ben" "Mag")])
        (let* ([newfile (string->path (format "~a~aSun~a-~a-Organ.tex"
                                              dir n day office))]
               [newstr (file->string newfile)])
          (unless (regexp-match "newpage" newstr)
            (display-to-file (string-append newstr "\n\n\\newpage") newfile #:exists 'replace)))
        ))


    ))


(populate-sun-organ-tex)
