#lang racket
(require test-engine/racket-tests)
(require (only-in "../deriv/deriv-primitives.rkt"
		  variable?
		  same-variable?
		  =number?)
         "exercise-b.rkt")

(define test-expr '(x + 3 * (x + y + 2)))
(check-expect (deriv test-expr 'x) 4)
(test)
