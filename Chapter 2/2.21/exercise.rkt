#lang racket
(require (file "../../general/map.rkt"))
(define (square x) (* x x))

(define (square-list items)
  (if (null? items)
      null
      (cons (square (car items)) (square-list (cdr items)))))

(define (square-list-w-map items)
  (map (lambda (x) (square x)) items))
(provide square-list
         square-list-w-map)