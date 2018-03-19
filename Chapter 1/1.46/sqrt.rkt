#lang racket
(require (file "exercise.rkt"))

(define (square x) (* x x))
(define (abs x)
  (if (>= x 0)
      x
      (- x)))
(define (average a b)
  (/ (+ a b) 2))


(define (sqrt x)
  (define (good-enough-sqrt? guess)
     (< (abs (- (square guess) x)) 0.00001))
  (define (improve-sqrt guess)
    (average guess (/ x guess)))
  ((iterative-improve good-enough-sqrt? improve-sqrt) 1.0))
  
(sqrt 9)
