#lang racket
; 561 1105 1729 2465
(define (pow-iter a n temp)
  (cond ((= n 0) 1)
        ((= n 1) a)
        (else (pow-iter (* temp a) (- n 1) temp))))
(define (pow a n)
  (pow-iter a n a))

(define (test n a)
  (= (remainder (pow a n) n) (remainder a n)))

(define (carmichael n a)
  (if (>= a n)
      #t
      (if (test n a)
          (carmichael n (+ a 1))
          #f)))

(carmichael 1729 1)