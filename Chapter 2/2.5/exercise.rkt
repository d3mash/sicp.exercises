#lang racket

(define (cons a b)
  (if (or (< a 0) (< b 0))
      (error "arguments cannot be negative")
      (* (expt 2 a) (expt 3 b))))

(define (car z)
  (define (iter z counter)
    (if (= (remainder z 2) 0)
        (iter (/ z 2) (+ counter 1))
        counter))
  (iter z 0))
(define (cdr z)
  (define (iter z counter)
    (if (= (remainder z 3) 0)
        (iter (/ z 3) (+ counter 1))
        counter))
  (iter z 0))

(provide (all-defined-out))