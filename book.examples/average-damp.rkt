#lang racket
(require "fixed-point.rkt")
(define (average a b) (/ (+ a b) 2))

(define (average-damp a)
  (lambda (x) (average x (a x))))
