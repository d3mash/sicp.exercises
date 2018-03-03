#lang racket
(define (cube x) (* x x x))
(define (average a b) (/ (+ a b) 2))

(define (cubic-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubic-root-iter (improve guess x)
                       x)))
(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.0000000001))
(define (improve guess x)
  (average guess (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)))
(define (cubic-root x)
  (cubic-root-iter 1.9 x))
(provide cubic-root)
