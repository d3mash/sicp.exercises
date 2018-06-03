#lang racket
(require "exercise.rkt")
(require test-engine/racket-tests)
(check-expect (count-leaves (list 1 2 3 4 5)) 5)
(check-expect (count-leaves (list 1 2 (list 3 4) (list 4 6) 1)) 7)
(check-expect (count-leaves (list 1 (list 2 (list 3 (list 4))))) 4)
(test)
