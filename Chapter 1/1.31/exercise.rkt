#lang racket
; exercise-wide definitions
(define (cube x) (* x x x))
(define (inc x) (+ x 1))
(define (identity x) x)
(define (wallice-term a)
  (/ (* (- a 1) (+ a 1)) (* a a)))
(define (wallice-next x) (+ x 2))
; recursive product
(define (product-recurs term a next b)
  (if (> a b)
      1
      (* (term a)
         (product-recurs term (next a) next b))))
; iterative product
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))
; definitions for recursive products
(define (cube-product a b)
  (product-recurs cube a inc b))
(define (linear-product a b)
  (product-recurs identity a inc b))
(define (wallice a b)
 (* 4 (product-recurs wallice-term a  wallice-next b)))
(define (cube-product-iter a b)
  (product-iter cube a inc b))
(define (linear-product-iter a b)
  (product-iter identity a inc b))
(define (wallice-iter a b)
 (* 4 (product-iter wallice-term a  wallice-next b)))
(provide cube-product)
(provide linear-product)

