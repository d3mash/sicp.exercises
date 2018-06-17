#lang racket
(require (file "../2.38/exercise.rkt"))

(define (reverse-right sequence)
  (fold-right (lambda (x y) (append y (list x))) null sequence))
(define (reverse-left sequence)
  (fold-left (lambda (x y) (cons y x)) null sequence))

(provide reverse-right
         reverse-left)

