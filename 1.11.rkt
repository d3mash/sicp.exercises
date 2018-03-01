#lang racket
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (f (- n 2))
         (f (- n 3)))))

(f 10)

(define (fi n)
  (fimproved 2 1 0 n))

(define (fimproved a b c n)
  (if (= n 0)
      c
      (fimproved (+ a b c) a b (- n 1))))

(fi 10)