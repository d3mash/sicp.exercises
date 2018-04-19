#lang racket
(define (last-pair list)
  (if (null? list)
      null
      (if (null? (cdr list))
          (car list)
          (last-pair (cdr list)))))

(provide last-pair)