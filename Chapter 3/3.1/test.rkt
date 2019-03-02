#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")

(check-expect ((make-accumulator 5) 15) 20)

(test)

