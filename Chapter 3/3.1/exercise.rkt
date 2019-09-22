#lang racket
(define (make-accumulator amount)
  (lambda (addition)
    (set! amount (+ amount addition))
    amount))

(provide make-accumulator)
