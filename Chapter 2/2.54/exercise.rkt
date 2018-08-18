#lang racket


(define (equal? list1 list2)
  (cond ((and (null? list1) (null? list2)) #t)
        ((or (null? list1) (null? list2)) #f)
        ((and (pair? list1) (pair? list2))
         (and (equal? (car list1) (car list2))
              (equal? (cdr list1) (cdr list2))))
        ((or (pair? list1) (pair? list2)) #f)
        (else (eq? list1 list2))))

(provide equal?)