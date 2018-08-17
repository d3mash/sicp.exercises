#lang racket
(require (file "../2.46/exercise.rkt"))

(define (make-frame-l origin edge1 edge2)
  (list origin edge1 edge2))
(define (make-frame-c origin edge1 edge2)
  (cons origin (cons edge1 edge2)))

(define (get-origin-l frame)
  (car frame))
(define (get-origin-c frame)
  (car frame))
(define (get-edge1-l frame)
  (cadr frame))
(define (get-edge1-c frame)
  (cadr frame))
(define (get-edge2-l frame)
  (caddr frame))
(define (get-edge2-c frame)
  (cddr frame))

(provide (all-defined-out))
