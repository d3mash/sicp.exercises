#lang racket
; importing relevant modules
(require "prime.rkt")
(require "NOD.rkt")

; exercise-wide definitions
(define (identity x) x)
(define (inc x) (+ x 1))
(define (even? x) (= (remainder x 2) 0))
(define (square x) (* x x))

; filtered accumulate definitions where filter is a one-argument predicate
(define (filtered-accumulate combiner null-value filter a term b next)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a) (filtered-accumulate combiner null-value filter (next a) term b next))
          (filtered-accumulate combiner null-value filter (next a) term b next))))

; test application
(define (sum-even a b)
  (filtered-accumulate + 0 even? a identity b inc))

; exercise 1.33: a)
(define (sum-of-squares-primes a b)
  (filtered-accumulate + 0 prime? a square b inc))

; exercise 1.33: b)
(define (sum-exercise-b a b)
  (define (is-prime-to-other a)
    (= (gcd a b) 1))
  (filtered-accumulate * 1 is-prime-to-other a identity b inc))
(provide sum-of-squares-primes)
(provide sum-exercise-b)


