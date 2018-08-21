#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(check-expect (union '(1 2 3 4 5) '(4 5 3 6 7)) '(1 2 3 4 5 6 7))
(check-expect (intersection '(1 3 4 5) '(3 4)) '(3 4))

(test)