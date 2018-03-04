#lang racket
;first function makes a recurcive process
(define (f n) 
  (if (< n 3)
      n
      (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))
(define (f-improved n)
  (define (f-iter a b c count)
    (if (= count 0)
        c
        (f-iter (+ a b c) a b (- count 1))))
  (f-iter 2 1 0 n))

(provide f)
(provide f-improved)
