#lang racket


(require test-engine/racket-tests)
(require "exercise.rkt")

(check-expect (f 5) 11)
(check-expect (f-improved 5) 11)
(check-expect (f 6) 20)
(check-expect (f-improved 6) 20)

(test)