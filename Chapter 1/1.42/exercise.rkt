#lang racket
; реализовать композицию двух одноаргументных функций f(x) g(x)
; процедуру (compose f g), возвращаующую x -> f(g(x))

(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (compose f g)
  (lambda (x) (f (g x))))
(provide inc
         square
         compose)
