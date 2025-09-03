#lang racket

;; The function in this scripts takes three arguments. If they are not passed
;; in from the command line, the script requests them to be entered:
;; a file stem name for the hymn, a file stem name for the associated
;; melody, and a list of tex files in OT to update (e.g. A1-Lauds). 
;; Then it creates the necessary files in the
;; ~/scores/like-burning-incense/hymns/ directory and updates the
;; -cantor and -organ.tex files in offices/ordinaryTime

(define (create-hymn hymnfilestem melodyfilestem [texfiles #f])
  (let* ([rootdir "/home/ryan/scores/like-burning-incense"]
         [hymndir (string-append rootdir "/hymns")]
         [notesdir (string-append hymndir "/notes")]
         [lyricsdir (string-append hymndir "/lyrics")]
         [cantorscoreskel (string-replace
                           (string-replace
                            (file->string
                             (string->path
                              (format "~a/skel/hymn-score-cantor.ly" rootdir)))
                            "<title>"
                            hymnfilestem)
                           "<melody>"
                           melodyfilestem)]
         [organscoreskel (string-replace
                          (string-replace
                           (file->string
                            (string->path
                             (format "~a/skel/hymn-score-organ.ly" rootdir)))
                           "<title>"
                           hymnfilestem)
                          "<melody>"
                          melodyfilestem)]
         [notesskel (string-replace
                     (file->string
                      (string->path
                       (format "~a/skel/hymn-notes-melody.ily" rootdir)))
                     "<melody>"
                     melodyfilestem)]
         [lyricsskel (file->string
                      (string->path
                       (format "~a/skel/hymn-lyrics.ily" rootdir)))]
         [cantorscorefile (string->path (format "~a/~a-cantor.ly"
                                                hymndir hymnfilestem))]
         [organscorefile (string->path (format "~a/~a-organ.ly"
                                               hymndir hymnfilestem))]
         [cantortexfile (string->path (format "~a/~a-cantor.tex"
                                              hymndir hymnfilestem))]
         [organtexfile (string->path (format "~a/~a-organ.tex"
                                             hymndir hymnfilestem))]
         [notesfile (string->path (format "~a/~a.ily"
                                          notesdir melodyfilestem))]
         [lyricsfile (string->path (format "~a/~a.ily"
                                           lyricsdir hymnfilestem))]
         [prepositions (set "in" "of" "with" "in" "the" "and" "for" "to")]
         [humantitle (let ([tmp (string-split hymnfilestem "-")])
                       (string-join
                        (map (λ (x) (if (set-member? prepositions x)
                                        x
                                        (string-append
                                         (string-upcase (substring x 0 1))
                                         (substring x 1))))
                             tmp)))])

    ;; (displayln
    ;;  (format "hymnfilestem: ~a\nmelodyfilestem: ~a\ncantorscorefile: ~a\norganscorefile: ~a\ncantortexfile: ~a\norgantexfile: ~a\nnotesfile: ~a\nlyricsfile: ~a\nhumantitle: ~a\ntexfiles: ~a"
    ;;          hymnfilestem melodyfilestem cantorscorefile organscorefile
    ;;          cantortexfile organtexfile notesfile lyricsfile humantitle
    ;;          texfiles))

    
    ;; do the work here:
    (unless (file-exists? notesfile)
      (display-to-file notesskel notesfile))
    (unless (file-exists? lyricsfile)
      (display-to-file lyricsskel lyricsfile))
    (unless (file-exists? cantorscorefile)
      (display-to-file cantorscoreskel cantorscorefile))
    (unless (file-exists? organscorefile)
      (display-to-file organscoreskel organscorefile))
    (unless (file-exists? cantortexfile)
      "make cantor tex file")
    (unless (file-exists? organtexfile)
      (let ([organtexfileskel (format "\\psalmsubtitle{~a}\n\n\\lilypondfile[line-width=7in]{/home/ryan/scores/like-burning-incense/hymns/~a-organ.ly}"
                                      humantitle hymnfilestem)])
        (display-to-file organtexfileskel organtexfile)))
    (unless (file-exists? cantortexfile)
      (let ([cantortexfileskel (format "\\hymn\n\n\\psalmsubtitle{~a}\n\n\\lilypondfile{/home/ryan/scores/like-burning-incense/hymns/~a-cantor.ly}\n\n%% \\begin{underhymnverse}\n%% \\flagverse{\\footnotesize\\textbf{5.}}\n\n%% \\end{underhymnverse}\n\n%% \\begin{hymnsource}\n\n%% \\end{hymnsource}"
                                       humantitle hymnfilestem)])
        (display-to-file cantortexfileskel cantortexfile)))

    ;; Do I need to update existing tex files for the given offices?
    (when texfiles
      (for ([f (string-split texfiles)])
        (let* ([curcantorfile
                (string->path
                 (format "~a/offices/ordinaryTime/~a-Cantor.tex"
                         rootdir f))]
               [curcantorfiletxt (file->string curcantorfile)]
               [curorganfile
                (string->path
                 (format "~a/offices/ordinaryTime/~a-Organ.tex"
                         rootdir f))]
               [curorganfiletxt (file->string curorganfile)]
               )
          
          (unless (regexp-match hymnfilestem curcantorfiletxt)
            (display-to-file
             (regexp-replace #rx"(.*opt{hymn}.*?\n)(.*)"
                             curcantorfiletxt
                             (format "\\1\\\\opt{hymnmusic}{\\\\input{/home/ryan/scores/like-burning-incense/hymns/~a-cantor.tex}}\n\\2"
                                     hymnfilestem)
                             )
             curcantorfile
             #:exists 'replace))
          (unless (regexp-match hymnfilestem curorganfiletxt)
            (let ([skel (format "\\opt{hymns}{\\null\\ifoddpage\\null\\else\\null\\newpage\\fi}\n\\opt{hymns}{\\thispagestyle{officetitle}}\n\\opt{hymns}{\\section*{~a ~a Prayer, Week ~a}}\n\\addcontentsline{toc}{section}{~a ~a Prayer}\n\\sectionmark{~a ~a Prayer}\n\\opt{hymns}{\\input{/home/ryan/scores/like-burning-incense/hymns/~a-organ.tex}}\n\\opt{hymns}{\\newpage}"
                                (list-ref
                                 '("Sunday" "Sunday" "Monday" "Tuesday"
                                            "Wednesday" "Thursday" "Friday")
                                 (string->number (string (string-ref f 1))))
                                (if (regexp-match "Vespers" f)
                                    "Evening"
                                    "Morning")
                                (match (string-ref f 0)
                                  (#\A "I")
                                  (#\B "II")
                                  (#\C "III")
                                  (#\D "IV"))
                                (list-ref
                                 '("Sunday" "Sunday" "Monday" "Tuesday"
                                            "Wednesday" "Thursday" "Friday")
                                 (string->number (string (string-ref f 1))))
                                (if (regexp-match "Vespers" f)
                                    "Evening"
                                    "Morning")
                                (list-ref
                                 '("Sunday" "Sunday" "Monday" "Tuesday"
                                            "Wednesday" "Thursday" "Friday")
                                 (string->number (string (string-ref f 1))))
                                (if (regexp-match "Vespers" f)
                                    "Evening"
                                    "Morning")
                                hymnfilestem)])
              (display-to-file (string-append skel "\n\n" curorganfiletxt)
                               curorganfile
                               #:exists 'replace)))
          )))))


;; (create-hymn (if (= 2 (vector-length (current-command-line-arguments)))
;;                  (format
;;                   "~a" (vector-ref
;;                         (current-command-line-arguments) 0))
;;                  (begin (display "Enter file stem for hymn: ")
;;                         (read-line)))
;;              (if (= 2 (vector-length (current-command-line-arguments)))
;;                  (format
;;                   "~a" (vector-ref
;;                         (current-command-line-arguments) 1))
;;                  (begin (display "Enter file stem for melody: ")
;;                         (read-line)))
;;              #f
;;              ;; (if (= 3 (vector-length (current-command-line-arguments)))
;;              ;;     (format
;;              ;;      "~a" (vector-ref
;;              ;;            (current-command-line-arguments) 2))
;;              ;;     ;; "B3-Vespers D3-Vespers"
;;              ;;     (begin (display "Enter offices in OT (e.g. `A1-Lauds C1-Lauds`) or leave blank: ")
;;              ;;            (read-line))
;;              ;;     )
;;              )

(create-hymn "Christ-Jesus,-clothed-in-splendid-light" "melody-64")
