#lang racket
(require (file "../2.2/exercise.rkt"))
(define (rectangle-props width height)
  (cons width height))

(define (make-rectangle top-left-point properties)
  (cons top-left-point properties))
(define (get-rectangle-width rectangle)
  (car (cdr rectangle)))
(define (get-rectangle-height rectangle)
  (cdr (cdr rectangle)))
(define (rec-perimeter rectangle)
  (+ (* (get-rectangle-width rectangle) 2) (* (get-rectangle-height rectangle) 2)))
(define (rec-area rectangle)
  (* (get-rectangle-width rectangle) (get-rectangle-height rectangle)))
(define test-top-left-point
  (make-point 4 5))
(define test-rectangle
  (make-rectangle test-top-left-point (rectangle-props 2 3)))

(rec-perimeter test-rectangle)
(rec-area test-rectangle)
