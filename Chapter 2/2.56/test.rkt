#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")


(check-expect (deriv '(+ x 3) 'x) 1)
(check-expect (deriv '(+ (* x y) (* y (+ x 3))) 'x) '(+ y y))
(check-expect (deriv '(** x 3) 'x) '(* 3 (** x 2)))

(test)
