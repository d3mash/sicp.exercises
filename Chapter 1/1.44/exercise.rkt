#lang racket
(require (file "../1.43/exercise.rkt"))
; реализовать идею сглаживания функции
; если f - функция, а dx - некоторое малое число, то fсгл(x) =
; (f(x-dx)+f(x)+f(x+dx))/3

(define dx 0.000001)
(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (smooth-n-times n)
  (lambda (g) (repeated-iter (smooth g) n)))
(((smooth-n-times 3) square) 2)
((repeated-iter square 3) 2)
(square 3) ;-> 9
((smooth square) 3);  -> 9.000000000000666