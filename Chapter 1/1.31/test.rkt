#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(check-expect (cube-product 1 3) 216)
(check-expect (linear-product 1 3) 6)
(test)