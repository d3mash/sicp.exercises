#lang racket
(define (adjoin-set x set)
  (cons x set))
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (intersection s1 s2)
  (define (iter acc remaining)
    (cond ((null? remaining) acc)
          ((element-of-set? (car remaining) s2) (iter (cons (car remaining) acc) (cdr remaining)))
          (else (iter acc (cdr remaining)))))
  (reverse (iter '() s1)))

(define (union s1 s2)
  (define (iter acc remaining)
    (cond ((null? remaining) acc)
          ((element-of-set? (car remaining) acc) (iter acc (cdr remaining)))
          (else (iter (cons (car remaining) acc) (cdr remaining)))))
  (reverse (iter '() (append s1 s2))))

(provide (all-defined-out))