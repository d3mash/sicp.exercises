#lang racket
(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))
(define (cdr z)
    (z (lambda (p q) q)))

; SUBSTITUTE MODEL for (car)
; (car (cons x y)) ->
; (car (lambda (m) (m x y))) -> 
; ((lambda (m)( m x y)) (lambda (p q) p))
; ((lambda (p q) p) x y)
; x

; SUBSTITUTE MODEL for (car)
; (car (cons x y)) ->
; (car (lambda (m) (m x y))) -> 
; ((lambda (m)( m x y)) (lambda (p q) q))
; ((lambda (p q) q) x y)
; y


(define point (cons 1 2))
(car point)
(cdr point)