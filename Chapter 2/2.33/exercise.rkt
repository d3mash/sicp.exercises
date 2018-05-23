#lang racket
(require (file "../../general/accumulate.rkt"))
(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) (map p (cdr sequence)))) null sequence))

(define (append seq1 seq2) (accumulate cons seq2 seq1))
(define (length sequence) (accumulate (lambda (x y) (+ y 1)) 0 sequence))

(provide map
         append
         length)