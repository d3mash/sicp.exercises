#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(require (file "../2.46/exercise.rkt"))
(define v1 (make-vect 1 2))
(define v2 (make-vect 2 1))
(define seg (make-segment v1 v2))
(check-expect (start-segment seg) '(1 . 2))
(check-expect (end-segment seg) '(2 . 1))

(test)