#lang racket

(define (cons a b)
  (if (or (< a 0) (< b 0))
      (error "arguments cannot be negative")
      (* (expt 2 a) (expt 3 b))))

(define (factor base number)
  (if (= (remainder number base) 0)
         (+ 1 (factor base (/ number base)))
         0))
        
(define (car z)
  (factor 2 z))
(define (cdr z)
  (factor 3 z))

(provide (all-defined-out))