#lang racket

(define (scale-list list factor)
  (if (null? list)
      null
      (cons (* (car list) factor)
            (scale-list (cdr list) factor))))

; in this example we clearly see the need for a higher-order map procedure

(define (map func list)
  (if (null? list)
      null
      (cons (func (car list))
            (map func (cdr list)))))

(define (scale-list-map list factor)
  (map (lambda (x) (* x factor))
       list))
(provide map)

