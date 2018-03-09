#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(check-expect (sum-iter 1 3) 6)
(check-expect (product-iter 1 4) 24)
(test)
