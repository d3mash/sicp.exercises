#lang racket
(define (square x)
  (* x x))
(define (halve x)
  (/ x 2))
(define (double x)
  (* x 2))
(define (even? n)
  (= (remainder n 2) 0))
(define (* a b)
  (if (= b 0) 0
      (+ a (* a (- b 1)))))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (fast-expt-mod b n)
  (cond ((= n 0 ) 1)
        ((even? n ) (square (fast-expt-mod b (halve n))))
        (else (* b (fast-expt-mod b (- n 1))))))


(fast-expt-mod 2 10)
        
      