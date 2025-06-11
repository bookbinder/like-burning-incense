#lang racket

;; This script takes three arguments: a file stem name for the hymn,
;; a file stem name for the associated melody, and the name of the office
;; whose *Hymn-Music.tex file needs to be created. Then it creates the
;; necessary files in the ~/scores/like-burning-incense/hymns/ and OT
;; directory.


(define hymnfilestem (if (= 3 (vector-length (current-command-line-arguments)))
                         (format
                          "~a" (vector-ref
                                (current-command-line-arguments) 0))
                         (begin (display "Enter file stem for hymn: ")
                                (read-line))))

(define melodyfilestem (if (= 3 (vector-length (current-command-line-arguments)))
                         (format
                          "~a" (vector-ref
                                (current-command-line-arguments) 1))
                         (begin (display "Enter file stem for melody: ")
                                (read-line))))
(define officestem (if (= 3 (vector-length (current-command-line-arguments)))
                         (format
                          "~a" (vector-ref
                                (current-command-line-arguments) 2))
                         (begin (display "Enter office stem (e.g. A1-Lauds): ")
                                (read-line))))

(define rootdir "/home/ryan/scores/like-burning-incense/")
(define curdir (string-append rootdir "hymns/"))
(define officedir (string-append rootdir "offices/ordinaryTime/"))
(define notesdir (string-append curdir "notes/"))
(define lyricsdir (string-append curdir "lyrics/"))
(define cantorscoreskel (string-replace
                         (string-replace
                          (file->string
                           (string->path
                            (format "~askel/hymn-score-cantor.ly" rootdir)))
                          "<title>"
                          hymnfilestem)
                         "<melody>"
                         melodyfilestem))
(define organscoreskel (string-replace
                         (string-replace
                          (file->string
                           (string->path
                            (format "~askel/hymn-score-organ.ly" rootdir)))
                          "<title>"
                          hymnfilestem)
                         "<melody>"
                         melodyfilestem))

(define notesskel (string-replace
                   (file->string
                    (string->path
                     (format "~askel/hymn-notes-melody.ily" rootdir)))
                   "<melody>"
                   melodyfilestem))
(define lyricsskel (file->string
                        (string->path
                         (format "~askel/hymn-lyrics.ily" rootdir))))
(define hymnmusicskel (string-replace
                       (file->string
                        (string->path
                         (format "~askel/Hymn-Music.tex" rootdir)))
                       "<title>"
                       hymnfilestem
                       ))

(define cantorscorefile (string->path (format "~a~a-cantor.ly"
                                              curdir hymnfilestem)))
(define organscorefile (string->path (format "~a~a-organ.ly"
                                             curdir hymnfilestem)))

(define notesfile (string->path (format "~a~a.ily"
                                        notesdir melodyfilestem)))
(define lyricsfile (string->path (format "~a~a.ily"
                                         lyricsdir hymnfilestem)))
(define hymnmusictexfile
  (string->path (format "~a~a-Hymn-Music.tex"
                        officedir officestem)))

(define cantortexfile (string->path (format "~a~a-Cantor.tex"
                                            officedir officestem)))

(define cantortexstr
  (regexp-replace
   "(\\\\opt{hymn}{\\\\input{(.*?-Hymn).tex}})\n\n"
   (file->string cantortexfile)
   "\\1\n\\\\opt{hymnmusic}{\\\\input{\\2-Music.tex}}\n\n"))

(unless (file-exists? cantorscorefile)
  (display-to-file cantorscoreskel cantorscorefile))

(unless (file-exists? organscorefile)
  (display-to-file organscoreskel organscorefile))

(unless (file-exists? notesfile)
  (display-to-file notesskel notesfile))

(unless (file-exists? lyricsfile)
  (display-to-file "" lyricsfile))

(unless (file-exists? hymnmusictexfile)
  (display-to-file hymnmusicskel hymnmusictexfile))

(display-to-file cantortexstr cantortexfile #:exists 'replace)
