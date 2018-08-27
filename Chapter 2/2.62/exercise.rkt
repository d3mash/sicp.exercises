#lang racket
(require "../sets/ordered.rkt")
(require (file "../2.61/exercise.rkt"))
(define (union-set s1 s2)
  (cond ((null? s1) s2)
        ((null? s2) s1)
        (else (union-set (adjoin-set (car s2) s1) (cdr s2)))))
(provide union-set)