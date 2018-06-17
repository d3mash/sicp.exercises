#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))

(check-expect (reverse-right (list 1 2 3)) '(3 2 1))
(check-expect (reverse-left (list 1 2 3)) '(3 2 1))

(test)
