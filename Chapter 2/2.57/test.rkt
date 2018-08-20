#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt"
         (except-in "../deriv/deriv-primitives.rkt"
                    augend
                    multiplier)
         (except-in (file "../2.56/exercise.rkt")
                    deriv))


(define test-expr `(+ 3 4 5))
(check-expect (augend test-expr) '(+ 4 5))
(check-expect (addend test-expr) '3)
(check-expect (augend '(+ 3 4)) '4)

(define to-deriv '(+ (* 3 (** x 2)) (* 3 y) (** x 3)))

(check-expect (deriv '(* x y (+ x 3)) 'x) '(+ (* y (+ x 3)) (* y x)))

(test)
