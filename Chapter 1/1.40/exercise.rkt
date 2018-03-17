#lang racket
(require (file "../../book.examples/average-damp.rkt"))
(require (file "../../book.examples/fixed-point.rkt"))
(require (file "../../book.examples/newton-method.rkt"))

; цель - определить процедуру, которую можно было бы использовать с newtons-method
; в выражениях вида
; (newton-method (cubic a b c) 1)
; для решения нулей кубических уравнений
; вида x^3 + ax^2 + bx + c

(define (cube x) (* x x x))
(define (square x) (* x x))
(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)))

; (newton-method (cubic 1 2 3) 1.0)