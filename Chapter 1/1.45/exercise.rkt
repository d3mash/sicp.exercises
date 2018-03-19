#lang racket
; required modules from the book - average-damping and fixed-point-finder
(require (file "../../book.examples/average-damp.rkt"))
(require (file "../../book.examples/fixed-point.rkt"))
(require (file "../1.43/exercise.rkt"))
(define (average a b)
  (/ (+ a b) 2))

; the task is to find the number of times average-damp should be applied to find
; the solutions to to a N-power root
; example 16^(1/4) - 4-power root of 16 is 2 - let's use this knowledge to
; find the solution using average-damp 2 times
;(define (sqrt x)
;  (fixed-point (lambda (y) (average y (/ x y)))
;              1.0))
; (sqrt 9) -> ~3
;(define (cubic-root x)
;  (fixed-point (average-damp (lambda (y) (/ x (square y))))
;               1.0))
; (cubic-root 8) -> ~2

(define (forth-power-root x)
  (fixed-point (repeated-iter (average-damp (lambda (y) (/ x (* y y y)))) 1.0) 2))
(define (damp-count n)
  (floor (log2 n)))
(define (log2 x)
  (/ (log x) (log 2)))
(define (n-power-root x n)
  (fixed-point (repeated-iter (average-damp (lambda (y) (/ x (expt y (- n 1))))) 1.0) (log2 n)))
(n-power-root 81 4)
; for n-power root one needs to average-damp the function (n-2) times
