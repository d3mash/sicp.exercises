#lang racket
(require (file "exercise.rkt"))
(require test-engine/racket-tests)
(define (square x) (* x x))
(define (cube x) (* x x x))

(define tree (list 1 (list 2 3 (list 4 5))))
(define (square-tree tree) (tree-map square tree))
(define (cube-tree tree) (tree-map cube tree))
(check-expect (square-tree tree) '(1 (4 9 (16 25))))
(check-expect (cube-tree tree) '(1 (8 27 (64 125))))
(test)