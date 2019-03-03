#lang racket
(define (make-accumulator amount)
  (let ((init amount))
    (lambda (x)
      (+ amount x))))

(provide make-accumulator)
(evil changes)
