#lang racket
(define (square x) (* x x))

(define (square-of-two-greatest-numbers a b c)
  (cond ((and (> a c) (> b c)) (+ (square a) (square b)))
        ((and (> a b) (> c b)) (+ (square a) (square c)))
        (else (+ (square b) (square c)))))

(provide square-of-two-greatest-numbers)
         
      