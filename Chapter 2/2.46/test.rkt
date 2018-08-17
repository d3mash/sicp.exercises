#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(define v1 (make-vect 0 5))
(define v2 (make-vect 4 2))
(define v3 (make-vect 5 5))


(check-expect (xcor-vect v1) 0)
(check-expect (ycor-vect v1) 5)
(check-expect (add-vect v1 v2) '(4 . 7))
(check-expect (sub-vect v3 v2) '(1 . 3))
(check-expect (scale-vect v2 3) '(12 . 6))
(test)
