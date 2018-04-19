#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))

(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(check-expect (cc 100 us-coins) 292)
(check-expect (cc 100 uk-coins) 104561)
(check-expect (cc 10 us-coins) 4)
(test)