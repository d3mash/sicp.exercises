#lang racket
(require (file "exercise.rkt"))
(require (file "../2.7/intervals.rkt"))
(require test-engine/racket-tests)

(define interval-1 (make-interval 8.0 12.0))
(define interval-2 (make-interval -6.6 -5.4))

(check-range (percent interval-1) 19 21)
(check-range (percent interval-2) 9 11)
(test)

