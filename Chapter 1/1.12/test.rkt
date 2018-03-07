#lang racket
(require "exercise.rkt")
(require test-engine/racket-tests)
(check-expect (pascal-recurs 2 4) (pascal-binom 2 4))
(check-expect (pascal-recurs 3 5) (pascal-binom 3 5))
(check-expect (pascal-recurs 0 0) (pascal-binom 0 0))
(test)