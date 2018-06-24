#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))

(check-expect (triplets-with-sum 6 8) '((4 3 1) (5 2 1)))
(test)