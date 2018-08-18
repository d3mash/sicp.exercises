#lang racket
(require (file "../2.46/exercise.rkt"))
(define (make-segment start end)
  (cons (make-vect (xcor-vect start) (ycor-vect start))
        (make-vect (xcor-vect end) (ycor-vect end))))

(define (start-segment segment)
  (car segment))
(define (end-segment segment)
  (cdr segment))

(provide (all-defined-out))