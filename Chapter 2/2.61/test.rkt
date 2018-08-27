#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")

(check-expect (adjoin-set 6 '(1 2 3 7 8)) '(1 2 3 6 7 8))
(check-expect (adjoin-set 1 '()) '(1))
(check-expect (adjoin-set 3 '(1 2 3 4 5)) '(1 2 3 4 5))
(test)
