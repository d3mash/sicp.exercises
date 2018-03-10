#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(check-expect (sum-exercise-b 1 7) 720)
(check-expect (sum-of-squares-primes 1 7) 88)
(check-expect (sum-of-squares-primes 1 3) 14)
(test)