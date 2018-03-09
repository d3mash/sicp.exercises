#lang racket
; exercise-wide definitions
(define (inc x) (+ x 1))
(define (identity x) x)

;recursive accumulate
(define (accumulate-recurs combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate-recurs combiner null-value term (next a) next b))))
(define (sum a b)
  (accumulate-recurs + 0 identity a inc b))
(define (product a b)
  (accumulate-recurs * 1 identity a inc b))

; iterative accumulate
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))
(define (sum-iter a b)
  (accumulate-iter + 0 identity a inc b))
(define (product-iter a b)
  (accumulate-iter * 1 identity a inc b))

;exports for test
(provide accumulate-recurs)
(provide accumulate-iter)
(provide sum-iter)
(provide product-iter)
