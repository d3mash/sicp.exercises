#lang racket
(define list-1 (list 1 3 (list 5 7) 9))
(define list-2 (list (list 7)))
(define list-3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

; use cars and cdrs to get 7 from lists

(cdr (car (cdr (cdr list-1))))
(cdaddr list-1)

(car (car list-2))
(caar list-2)

(cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr list-3)))))))))))