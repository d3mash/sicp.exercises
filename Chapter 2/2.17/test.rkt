#lang racket
(require (file "../../general/lists.rkt"))
(require (file "exercise.rkt"))
(require test-engine/racket-tests)
(define squares (list 1 4 9 16 25 36 49 64 81 100))
(check-expect (last-pair squares) '(100))
(test)