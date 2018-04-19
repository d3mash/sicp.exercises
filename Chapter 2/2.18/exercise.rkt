#lang racket
(require (file "../../general/lists.rkt"))
(define (reverse list)
  (define (iter input output)
    (if (null? input)
        output
        (iter (cdr input) (cons (car input) output))))
  (iter list null))
(provide (all-defined-out))
