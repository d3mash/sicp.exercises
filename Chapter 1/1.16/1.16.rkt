#lang racket
; написать процедуру, осуществляющую возведение в степень за
; логарифмическое число шагов, при этом записывая в память инвариант a,
; такой  что a*b^n

(define (square x)
   (* x x))

(define (even? n)
   (= (remainder n 2) 0))

(define (fast-expt b n)
   (expt-iter b n 1))

(define (expt-iter b n a)
   (cond ((= n 0) a)
         ((even? n) (expt-iter (square b) (/ n 2) a))
         (else (expt-iter  b (- n 1) (* a b)))))

(fast-expt 2 5)