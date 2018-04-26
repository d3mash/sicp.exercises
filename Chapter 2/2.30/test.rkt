#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))

(define tree (list 1 (list 2 3 (list 4 5))))
(check-expect (square-tree tree) '(1 (4 9 (16 25))))
(test)