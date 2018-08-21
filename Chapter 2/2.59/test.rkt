#lang racket
(require test-engine/racket-tests)
(require "../sets/set-primitives.rkt")
(require "exercise.rkt")
(check-expect (union-set '(1 3 5) '(2 4 6)) '(6 4 2 1 3 5))
(check-expect (union-set '(1 3 5) '()) '(1 3 5))
(check-expect (union-set '() '()) '())
(test)