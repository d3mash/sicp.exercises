#lang racket
(define (make-vect x y) (cons x y))
(define (xcor-vect vector) (car vector))
(define (ycor-vect vector) (cdr vector))

(define (add-vect v1 v2)
  (make-vect (+ (xcor-vect v1) (xcor-vect v2))
             (+ (ycor-vect v1) (ycor-vect v2))))
(define (sub-vect v1 v2)
  (make-vect (- (xcor-vect v1) (xcor-vect v2))
             (- (ycor-vect v1) (ycor-vect v2))))
(define (scale-vect v s)
  (make-vect (* (xcor-vect v) s)
             (* (ycor-vect v) s)))

(provide (all-defined-out))
