#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(define s (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
(check-expect (accumulate-n + 0 s) '(22 26 30))
(test)