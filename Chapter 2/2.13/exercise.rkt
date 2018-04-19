#lang racket
(require (file "../../general/intervals.rkt"))
(define first-interval (make-center-percent 10000 0.001))
(define second-interval (make-center-percent 20000 0.0001))
(define multiplied (mul-interval first-interval second-interval))
(center multiplied)
(percent multiplied)
(+ (percent first-interval) (percent second-interval))

; percent x + percent y ~ percent xy
