#lang racket
(define (list-ref list n)
  (if (= n 0)
      (car list)
      (list-ref (cdr list) (- n 1))))

(define (length list)
  (define (iter a count)
    (if (null? a)
        count
        (iter (cdr a) (+ 1 count))))
  (iter list 0))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list 2))))


