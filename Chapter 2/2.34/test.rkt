#lang racket
(require "exercise.rkt")
(require test-engine/racket-tests)
(check-expect (horner-eval 2 (list 1 3 0 5 0 1)) 79)
(check-expect (horner-eval 1 (list 1 2 3)) 6)
(check-expect (horner-eval 0 (list 1 1 1)) 1)
(test)

