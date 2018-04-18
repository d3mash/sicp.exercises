#lang racket
(define (make-interval a b) (cons a b))
(define (upper-bound x) (car x))
(define (lower-bound x) (cdr x))

(provide (all-defined-out))