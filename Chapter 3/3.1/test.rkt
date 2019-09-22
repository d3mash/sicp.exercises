#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")

(define accumulator (make-accumulator 0))
(check-expect (accumulator 5) 5)
(check-expect (accumulator 5) 10)

(test)

