#lang racket
(require (file "exercise.rkt"))
(require test-engine/racket-tests)
(check-expect (map (lambda (x) (* x x)) (list 1 2 3)) '(1 4 9))
(check-expect (map (lambda (x) (* x x)) (append (list 1 2 3) (list 4 5 6))) '(1 4 9 16 25 36))
(check-expect (length (map (lambda (x) (* x x)) (append (list 1 2 3) (list 4 5 6)))) 6)
(test)