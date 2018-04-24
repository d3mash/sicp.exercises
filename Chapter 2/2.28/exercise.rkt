#lang racket


(define (fringe x)
    (if (null? x)
      null
      (if (not (pair? (car x)))
          (cons (car x) (fringe (cdr x)))
          (append (fringe (car x)) (fringe (cdr x))))))

(provide fringe)
