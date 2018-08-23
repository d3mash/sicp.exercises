#lang racket

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? (car set) x))
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (if (element-of-set? x set)
      set
      (cons x set)))

(define (intersection-set s1 s2)
  (cond ((or (null? s1) (null? s2)) '())
        ((element-of-set? (car s1) 2)
         (cons (car s1) (intersection-set (cdr s1) s2)))
        (else (intersection-set (cdr s1) s2))))

(provide (all-defined-out))