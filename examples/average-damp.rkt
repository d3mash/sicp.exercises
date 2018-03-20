#lang racket
(require "fixed-point.rkt")
(define (average a b) (/ (+ a b) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
               1.0))
(provide average-damp)
; (sqrt 9) -> ~3
