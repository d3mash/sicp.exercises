#lang racket
(require (file "../2.7/intervals.rkt"))
(require (file "../2.8/interval-arifm.rkt"))
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (radius interval)
  (abs (/ (- (lower-bound interval)
        (upper-bound interval))
     2)))
; we need to show that radius of add and sub depends only on input rads
; and otherwise for mul and div
(define first-interval (make-interval 2.0 6.0))
(define second-interval (make-interval -7.0 -2.0))
(radius first-interval)
(radius second-interval)
(radius (add-interval first-interval second-interval))
(radius (sub-interval first-interval second-interval))
(radius (mul-interval first-interval second-interval))
(radius (div-interval first-interval second-interval))
  
  