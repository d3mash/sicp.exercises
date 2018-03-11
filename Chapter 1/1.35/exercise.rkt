#lang racket
(define tolerance 0.0000001)
(define (fixed-point f first-guess)
  (define (try guess)
    (let ((next (f guess)))
      (if ((lambda (v1 v2) (< (abs (- v1 v2)) tolerance)) guess next)
          next
          (try next))))
  (try first-guess))
(define (golden-ratio x)
  (fixed-point (lambda (x)  (+ 1 (/ 1 x) )) 1.0))
(golden-ratio 1)

