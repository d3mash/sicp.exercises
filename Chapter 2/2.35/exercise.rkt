#lang racket
(require (file "../../general/accumulate.rkt"))
;;(define (count-leaves x)
;;  (cond ((null? x) 0)
;;        ((not (pair? x)) 1)
;;        (else (+ (count-leaves (car x))
;;                 (count-leaves (cdr x))))))

(define (count-leaves tree)
  (accumulate (lambda (x y) (+ x y)) 
	      0
	      (map (lambda (x)
		     (if (pair? x)
		       (count-leaves x)
		       1))
              tree)))
(provide count-leaves)


                           