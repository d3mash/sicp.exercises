#lang racket
(require (file "exercise.rkt"))
(define tolerance 0.001)


;(define (fixed-point f first-guess)
;  (define (try guess)
;    (let ((next (f guess)))
;      (if ((lambda (v1 v2) (< (abs (- v1 v2)) tolerance)) guess next)
;          next
;          (try next))))
;  (try first-guess))

(define (fixed-point f first-guess) 
  ((iterative-improve (lambda (guess next) 
                              (< (abs (- guess next)) 
                                 tolerance)) 
                      f) first-guess))
    
     
  
(provide fixed-point)