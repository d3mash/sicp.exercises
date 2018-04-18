#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))
(require (file "../2.7/intervals.rkt"))

(define positive-interval (make-interval 5.0 10.0))
(define mixed-interval (make-interval -5.0 2.0))
(define negative-interval (make-interval -7.0 -2.0))
(define test-1 (mul-interval-improved positive-interval mixed-interval))
(define test-2 (mul-interval-improved positive-interval negative-interval))
(define test-3 (mul-interval-improved negative-interval mixed-interval))
(check-range (upper-bound test-1) 19 21)
(check-range (lower-bound test-1) -51 -49)
(check-range (lower-bound test-2) -71 -69)
(check-range (upper-bound test-2) -11 -9)
(check-range (lower-bound test-3) -15 -13)
(check-range (upper-bound test-3) 9 11)

(test)