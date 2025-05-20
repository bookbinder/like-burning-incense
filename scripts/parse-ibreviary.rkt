#!/usr/bin/racket
#lang racket

;; This script parses pasted-in data from iBreviary.com.
;; First it asks for a stem (e.g. A1-Lauds), then for a string pasted in
;; from iBreviary. Based on that, the script creates a string for a
;; <stem>-Readings.tex file, one for a <stem>-Responsory.tex file, and one
;; for a <stem>-Intercessions.tex file. It creates/overwrites those files
;; and updates the <stem>-Cantor.tex file.

(define stem (begin (display "Enter a stem (e.g. A1-Lauds): ") (read)))
(define s (begin
            (display "Enter multi-line string (end with Ctrl+D in terminal or Ctrl+Z <Enter> Ctrl+D in emacs shell):\n")
            (port->string (current-input-port))))

(define parts (regexp-match "READING\n(.*?)RESPONSORY(.*?)GOSPEL CANTICLE.*?INTERCESSIONS(.*?)THE LORD" s))
(define reading (string-trim (second parts)))
(define resp (string-trim (third parts)))
(define inter (string-trim (fourth parts)))
(define curdir (current-directory))
(define readingfile (string->path (format "~a~a-Reading.tex"
                                          curdir stem)))
(define responsoryfile (string->path (format "~a~a-Responsory.tex"
                                             curdir stem)))
(define intercessionsfile (string->path (format "~a~a-Intercessions.tex"
                                                curdir stem)))
(define cantortexfile (string->path (format "~a~a-Cantor.tex"
                                            curdir stem)))

(define (get-first-half-of-string full-string second-half)
  "Given the full string and the second half of that string, return
the first half. For use in the <stem>-Responsory.tex file."
  (let loop ([i 0])
    (if (= i (string-length full-string))
        (error "Didn't find the substring.")
        (if (string=? (substring full-string i)
                      second-half)
            (substring full-string 0 i)
            (loop (add1 i))))))

(define (produce-reading s)
  "Produce the text that will populate the <stem>-Readings.tex file"
  (let* ([s-parts (regexp-split "\n\n" s)]
         [first-par (string-split (first (cdr s-parts)) " ")]
         [first-word (format "\\lettrine{~a}{~a} "
                             (string-ref (first first-par) 0)
                             (substring (first first-par) 1))])
    (set! first-par (string-append
                     first-word
                     (string-join (cdr first-par) " ")))
    (if (= (length s-parts) 2)
      (format "\\reading{~a}\n\n~a"
              (string-replace (first s-parts) "-" "--")
              first-par)
      (format "\\reading{~a}\n\n~a~a"
              (string-replace (first s-parts) "-" "--")
              first-par
              (string-join (cdr (cdr s-parts)) "\n\n")))))    

(define (produce-responsory s)
  "Produce the text that will populate the <stem>-Responsory.tex file"
  (let* ([s (string-replace s "— " "")]
         [resp-parts (string-split s "\n")]
         [first-half (get-first-half-of-string
                      (first resp-parts)
                      (fifth resp-parts))])
    (format "\\responsory{~a}{~a}{~a}"
            (string-trim first-half)
            (fifth resp-parts)
            (fourth resp-parts))))

(define (produce-intercessions s)
  "Produce the text that will populate the <stem>-Intercessions.tex file"
  (let* ([s (string-replace (string-trim s) "— " "{\\color{red}---}")]
         [s (regexp-split "\n\n" s)]
         [s-parts (map (λ (x) (string-split x "\n")) s)]
         [res (format "\\intercessions\n\n\\begin{raggedright}\n~a\\\\\n\\emph{~a}"
                      (first (first s-parts))
                      (second (first s-parts)))])
    (for ([l (cdr s-parts)])
      (set! res (string-append res (format "\n\n\\medskip\n~a\\\\\n~a"
                                           (first l) (second l)))))
    (string-append res "\n\\end{raggedright}")))


(define (produce-files)
  (display-to-file
   (produce-reading reading) readingfile #:exists 'replace)
  (display-to-file
   (produce-responsory resp) responsoryfile #:exists 'replace)
  (display-to-file
   (produce-intercessions inter) intercessionsfile #:exists 'replace))


(define (update-cantor-tex-file)
  (when (file-exists? cantortexfile)
    (let* ([s (file->string cantortexfile)]
           [partsA (regexp-match "(%%%% Begin Ant1.*%%%% End Ant3)(.*)(%%%% Begin Ant4.*%%%% End Ant4)" s)])
      (if partsA
          (display-to-file
           (format
            "\\hymn\n\n\\psalmody\n\n~a\n\n\\input{~a-Reading.tex}\n\n\\input{~a-Responsory.tex}\n\n\\gospelcanticle\n\n~a\n\n\\input{~a-Intercessions.tex}"
            (second partsA) stem stem (fourth partsA) stem)
           cantortexfile
           #:exists 'replace)
          (let ([partsB (regexp-match "(%%%% Begin Ant1.*%%%% End Ant3)"
                                      s)])
            (when partsB
              (display-to-file
               (format
                "\\hymn\n\n\\psalmody\n\n~a\n\n\\input{~a-Reading.tex}\n\n\\input{~a-Responsory.tex}\n\n\\nogospelcanticle\n\n\\input{~a-Intercessions.tex}"
                (second partsB) stem stem stem)
               cantortexfile
               #:exists 'replace)))))))


(produce-files)
(update-cantor-tex-file)
