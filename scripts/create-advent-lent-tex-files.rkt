#lang racket

(define ordTime (string->path
                "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/"))

(define files
  (filter
   (lambda (p) (regexp-match? #rx"-Cantor.tex$" p))
   (directory-list ordTime)))

(define bentext "%%%% Begin Ant4
%% \\antiphonBen
%% \\lilypondfile[line-width=3.73in]{A4-Lauds-Ben-Ant-Cantor.ly}
%% \\opt{psalmtexts}
%%   {
%%   \\psalm{Benedictus}
%%   \\input{~/scores/like-burning-incense/psalms/Benedictus/toneStruc4/Benedictus.tex}
%%   \\antiphon
%%   \\lilypondfile[line-width=3.73in]{A4-Lauds-Ben-Ant-Cantor.ly}
%%   }
%%%% End Ant4")

(define magtext "%%%% Begin Ant4
%% \\antiphonMag
%% \\lilypondfile[line-width=3.73in]{A4-Vespers-Mag-Ant-Cantor.ly}
%% \\opt{psalmtexts}
%%   {
%%   \\psalm{Magnificat}
%%   \\input{~/scores/like-burning-incense/psalms/Magnificat/toneStruc4/Magnificat.tex}
%%   \\antiphon
%%   \\lilypondfile[line-width=3.73in]{A4-Vespers-Mag-Ant-Cantor.ly}
%%   }
%%%% End Ant4")

(for ([f files])
  (let* ([fstrpath (path->string f)]
         [fstem (first (string-split fstrpath "-"))]
         [gctxt (if (regexp-match "Vespers" fstrpath)
                    magtext
                    bentext)]
         [offices "/home/ryan/scores/like-burning-incense/offices/"]
         [ftxt (first
                (regexp-match "%%%% Begin Ant1.*%%%% End Ant3"
                              (file->string
                               (string->path
                                (format "~aordinaryTime/~a" offices f)))))]
         [ftxt (string-replace ftxt "3.73in]{" "3.73in]{/home/ryan/scores/like-burning-incense/offices/ordinaryTime/")]
         [advtexfile (string->path (format "~aadvent/A~a" offices fstrpath))]
         [lenttexfileA (string->path (format "~alent/L~a" offices fstrpath))]
         [lenttexfileB
          (if (char=? #\D (string-ref fstrpath 0))
              #f
              (string->path
               (format "~alent/L~a~a"
                       offices
                       (integer->char
                        (+ 4 (char->integer (string-ref fstrpath 0))))
                       (substring fstrpath 1))))]
         [weekday? (and (not (char=? #\0 (string-ref fstrpath 1)))
                        (not (char=? #\1 (string-ref fstrpath 1))))])

    (when weekday?
      (display-to-file
       (string-append ftxt "\n\n" (string-replace
                                   gctxt "A4" (format "A~a" fstem)))
       advtexfile #:exists 'replace)
      (display-to-file
       (string-append ftxt "\n\n" (string-replace
                                   gctxt "A4" (format "L~a" fstem))) lenttexfileA #:exists 'replace)
      (when lenttexfileB
        (display-to-file
         (string-append ftxt "\n\n" (string-replace
                                   gctxt "A4" (format "L~a" fstem))) lenttexfileB #:exists 'replace)))

    ;; (displayln (string-append ftxt "\n\n" bentext))
    ;; (display-to-file (string-append ftxt "\n\n" bentext))
    ;; (when lenttexfileB (println lenttexfileB))
    
    ))
