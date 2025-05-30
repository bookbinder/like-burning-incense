#!/usr/bin/racket
#lang racket

(define-values (ls out1 in1 err1)
  (subprocess #f #f #f "/usr/bin/pandoc" "-f" "html" "-t" "markdown" "<<<" "here is some text"))

;; (subprocess-wait ls)
;; (define res (port->string out1))
;; (display res)
