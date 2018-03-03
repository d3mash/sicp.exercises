#lang racket


(require test-engine/racket-tests)
(require "exercise.rkt")
(check-expect (round (cubic-root 8)) 2)
(test)
