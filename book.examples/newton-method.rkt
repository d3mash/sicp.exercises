#lang racket
(require "average-damp.rkt")
(require "fixed-point.rkt")

(define dx 0.00001)
(define (cube x) (* x x x))
(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x)) dx)))
(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))
(define (newton-method g guess)
  (fixed-point (newton-transform g) guess))

;(define (sqrt x)
;  (newton-method (lambda (y) ( - (* y y) x))
;                 1.0))

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))
(define (sqrt x)
  (fixed-point-of-transform (lambda (y) (/ x y))
               average-damp
               1.0))
(sqrt 9)