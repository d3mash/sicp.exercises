#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))

(define empty-list null)
(define simple-list (list 1 2 3 4 5))
(define nested-list (list (list 1 2 3 4) 5 6))
(define deeply-nested (list (list 1 2 (list 3 4) 5) 6 7))

(check-expect (deep-reverse empty-list) null)
(check-expect (deep-reverse simple-list) '(5 4 3 2 1))
(check-expect (deep-reverse nested-list) '(6 5 (4 3 2 1)))
(check-expect (deep-reverse deeply-nested) '(7 6 (5 (4 3) 2 1)))
(test)