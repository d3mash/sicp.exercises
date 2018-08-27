#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(check-expect (union-set '(1 2 3 4 5) '(6 7 8)) '(1 2 3 4 5 6 7 8))
(check-expect (union-set '() '()) '())
(check-expect (union-set '(1 2 3) '(2 3 4)) '(1 2 3 4))
(test)