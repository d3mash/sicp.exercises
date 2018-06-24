#lang racket
(require (file "exercise.rkt"))
(require test-engine/racket-tests)

(check-expect (unique-pairs 5)
              '((2 1) (3 1) (3 2) (4 1) (4 2) (4 3) (5 1) (5 2) (5 3) (5 4)))
(test)