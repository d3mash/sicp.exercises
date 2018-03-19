#lang racket
(require (file "../1.42/exercise.rkt"))
(define (cube x) (* x x x))
; реализовать процедуру, принимающую одноаргументную функцию и количество раз, которое
; ее надо применить.
; возвращает процедеуру, применяющую принятую функцию
; к аргументу принятое количество раз

(define (repeated-rec function number)
  (lambda (x) (if (= number 0)
                  x
                  ((repeated-rec function (- number 1)) (function x)))))
(define (repeated-iter function number)
  (define (iter result counter)
    (if (= counter 0)
        result
        (iter (function result) (- counter 1))))
  (lambda (x) (iter x number)))

(provide inc
         square
         cube
         repeated-rec
         repeated-iter)