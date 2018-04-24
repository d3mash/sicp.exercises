#lang racket
(require (file "exercise.rkt"))
(require test-engine/racket-tests)

(define x (list (list 1 2) (list 3 4)))
(define empty null)

(check-expect (fringe null) null)
(check-expect (fringe x) '(1 2 3 4))
(check-expect (fringe (list x x)) '(1 2 3 4 1 2 3 4))
(check-expect (fringe (list (list 1 2 (list 1 2)) 1 2)) '(1 2 1 2 1 2))
(test)
