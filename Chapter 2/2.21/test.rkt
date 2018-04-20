#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))
(require (file "../../general/map.rkt"))

(define all-positive-list (list 1 2 3 4 5))
(check-expect (square-list all-positive-list) '(1 4 9 16 25))
(check-expect (square-list null) null)
(check-expect (square-list-w-map all-positive-list) '(1 4 9 16 25))
(check-expect (square-list-w-map null) null)
(test)