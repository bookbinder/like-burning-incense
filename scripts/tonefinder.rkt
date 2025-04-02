#!/usr/bin/racket
#lang racket

(define input-file
  "/home/ryan/scores/like-burning-incense/psalmtones/tonechart.txt")

(define input
  (map string-split (file->lines input-file)))

(define res '())

(for ([x input])
  (when (and
         (string=? (vector-ref (current-command-line-arguments) 0)
                   (first x))
         (string=? (vector-ref (current-command-line-arguments) 1)
                   (second x))
         (string=? (vector-ref (current-command-line-arguments) 2)
                   (third x)))
    (set! res (cons (list (fourth x) (fifth x)) res))))


(define best-guess '())
(define second-guess '())

(for ([x res])
  (if (string=? (second x) (vector-ref (current-command-line-arguments) 3))
      (set! best-guess (cons x best-guess))
      (set! second-guess (cons x second-guess))))

(if best-guess
    (printf "Try the following tones: ~a\n"
            (sort (map (compose string->number car) best-guess) <))
    (if second-guess
        (printf
         "No perfect match found, but try modifying one of these: ~a"
         (sort (map (compose string->number car) second-guess) <))
        "No matches found."))
