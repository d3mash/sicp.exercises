#lang racket
; primitives
(define (abs a)
  (if (>= a 0)
      a
      (- a)))
(define (sign a)
  (cond ((> a 0) 1)
        ((< a 0) -1)
        (else 0)))
(define (square x)
  (* x x))
(define (gcd a b)
  (if ( = b 0)
      a
      (gcd b (remainder a b))))
(provide (all-defined-out))