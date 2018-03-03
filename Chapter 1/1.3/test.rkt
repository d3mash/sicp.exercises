#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")

(check-expect (square-of-two-greatest-numbers 1 2 3) 13)
(check-expect (square-of-two-greatest-numbers 3 2 1) 13)
(test)
