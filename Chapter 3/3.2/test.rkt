#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(define (square x) (* x x))
(define square-monitored (make-monitored square))

(check-expect (square-monitored 5) 25)
(check-expect (square-monitored 4) 16)
(check-expect (square-monitored 'how-many-calls?) 2)

(test)
