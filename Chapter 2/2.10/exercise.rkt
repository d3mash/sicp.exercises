#lang racket
(require (file "../2.7/intervals.rkt"))
(require (file "../2.8/interval-arifm.rkt"))
(define test-interval-1 (make-interval -2.0 10.0))
(define test-interval-2 (make-interval 2.0 3.0))

(define (div-interval-modified x y)
  (if (or (< (* (upper-bound x) (lower-bound x)) 0)
          (< (* (upper-bound y) (lower-bound y)) 0))
      (error "Unable to divide intervals passing 0")
      (div-interval x y)))

