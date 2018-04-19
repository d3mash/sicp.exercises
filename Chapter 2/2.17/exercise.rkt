#lang racket
(define (last-pair list)
  (if (null? list)
      (error "empty list")
      (if (null? (cdr list))
          (car list)
          (last-pair (cdr list)))))