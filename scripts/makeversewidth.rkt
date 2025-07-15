#lang racket

;;;; Finds the longest line in all the psalm files (.*/psalms/.*/\d\d/*.tex)
;;;; and updates the file with a settowidth and versewidth

(define (longest-line s)
  "Given the file contents as a string S, return the longest line of the psalm."
  (let* ([tmp (string-replace s "\\i}" "i}")]
         [tmp (regexp-replace* #rx"^ +" tmp "")]
         [tmp (regexp-replace* #rx"\n +" tmp "\n")]
         [tmp (regexp-replace* #rx"\\\\settowidth.*?\n" tmp "")]
         [tmp (string-replace tmp "[\\versewidth]" "")]
         [tmp (regexp-replace* #rx"\\\\FirstLetter{(.)}" tmp "\\1")]
         [tmp (regexp-replace* #rx"\\\\pointupl?{(.)}" tmp "\\1")]
         [tmp (regexp-replace* #rx"\\\\\\\\" tmp "")]
         [tmp (regexp-replace* #rx"\\\\Flex" tmp " +")]
         [tmp (regexp-replace* #rx"\\\\Med" tmp " *")]
         [tmp (regexp-replace* #rx"\\\\begin{verse}\n" tmp "")]
         [tmp (regexp-replace* #rx" *\\\\indentpattern.*?\n" tmp "")]
         [tmp (regexp-replace* #rx" *\\\\begin{patverse}\n" tmp "")]
         [tmp (regexp-replace* #rx" *\\\\end{patverse}\n" tmp "")]
         [tmp (regexp-replace* #rx"\\\\end{verse}\n*" tmp "")]
         [tmp (regexp-replace* #rx"\n\n+" tmp "\n")]
         [tmp (string-split tmp "\n")]
         [longest (argmax string-length tmp)])
    longest))

(define (update-versewidth s)
  "Where S is a file->string, find the longest line of the psalm and
then add \\settowidth... and [\\versewidth] to the file string."
  (let* ([s (regexp-replace #rx"\\\\settowidth.*?\n" s "")]
         [s (string-replace s "[\\versewidth]" "")]
         [longest (longest-line s)]
         [s (string-replace
             s
             "\\begin{verse}"
             (format
              "\\settowidth{\\versewidth}{~a}\n\\begin{verse}[\\versewidth]"
              longest))])
    s))

(for ([x (sequence->list
          (sequence-filter
           (λ (x) (regexp-match? #px"/\\d\\d/.*tex" x))
           (in-directory "/home/ryan/scores/like-burning-incense/psalms/")))])
  ;; (displayln (update-versewidth (file->string x)))
  (display-to-file (update-versewidth (file->string x)) x #:exists 'replace)
  )
