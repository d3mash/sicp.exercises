#lang racket
(require (file "../../book.examples/average-damp.rkt"))
(require (file "../../book.examples/fixed-point.rkt"))
(require (file "../../book.examples/newton-method.rkt"))
; разработать процедуру double, принимающую аргументом функцию от одного аргумента
; и возвращающую процедуру, применяющую исходную процедуру дважды

(define (double f)
  (lambda (x) (f (f x))))

(define (inc x) (+ x 1)) 

((double inc) 1)
(((double (double double)) inc) 5)
