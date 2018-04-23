#lang racket
(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))

(count-leaves (cons (list 1 2) (list 3 4)))
(length (cons (list 1 2) (list 3 4)))