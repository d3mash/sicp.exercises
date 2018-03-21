#lang racket
; point through pairs
(define (make-point a b)
  (cons a b))
(define (x-point point)
  (car point))
(define (y-point point)
  (cdr point))

; segment through points
(define (make-segment start end)
  (cons start end))
(define (start-segment segment)
  (car (segment)))
(define (end-segment segment)
  (cdr (segment)))
(define (midpoint segment)
  (cons (/ (+ (car (car segment)) (car (cdr segment))) 2)
        (/ (+ (cdr (car segment)) (cdr (cdr segment))) 2)))

; point-printer
(define (print-point point)
  (newline)
  (display "(")
  (display (x-point point))
  (display ", ")
  (display (y-point point))
  (display ")"))

; test

(define point1 (make-point 1.0 2.0))
(define point2 (make-point 5.0 5.0))
(define segment-test (make-segment point1 point2))
(print-point (midpoint segment-test))
  