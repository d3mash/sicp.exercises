#lang racket

(define (cont-frac-rec n d k)
  (if (= k 0)
      0
      (/ (n k) (+ (d k) (cont-frac-rec n d (- k 1))))))

(define (cont-frac-iter n d k)
  (define (iter k result)
    (if (= k 0)
        result
        (iter (- k 1) (/ (n k) (+ (d k) result)))))
  (iter k 0))


(define (find-d x)
  (cond ((= x 1) 1)
        ((= x 2) 2)
        (else (let ((x (- x 2)))
                (if (not(= (remainder x 3) 0))
                    1
                    (+ x 1))))))
                
(cont-frac-iter (lambda (x) 1.0)
                find-d
                15)
