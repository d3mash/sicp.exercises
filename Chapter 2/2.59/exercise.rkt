#lang racket
(require "../sets/set-primitives.rkt")

(define (union-set s1 s2)
  (cond ((and (null? s1) (null? s2) '()))
        ((null? s1) (reverse s2))
        ((null? s2) s1)
        ((element-of-set? (car s1) s2) (union-set (cdr s1) s2))
        (else (element-of-set? (car s1) s2) (union-set (cdr s1) (cons (car s1) s2)))))

(provide union-set)


