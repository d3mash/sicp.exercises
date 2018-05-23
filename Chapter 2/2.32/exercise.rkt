#lang racket
; complete the subsets and explain why it works
(define (subsets s)
  (if (null? s)
      (list null)
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (x) (cons (car s) x))
                            rest)))))

(define test (list 1 2 3))
(subsets test)