#lang racket
; определить процедуру, принимающую аргументами f a b и n и возвращает
; значение интеграла по правилу Симпсона для cube от 0 до 1 n 100 и n 1000
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
      (sum term (next a) next b))))
(define (cube x) (* x x x))
(define (inc n) (+ n 1))

(define (round-to-next-even x)
  (+ x (remainder x 2)))

(define (simpson f a b n)
  (define fixed-n (round-to-next-even n))
  (define h (/ (- b a) fixed-n))
  (define (simpson-term k)
    (define y (f (+ a (* k h))))
    (if (or (= k 0) (= k fixed-n))
        (* 1.0 y)
        (if (even? k)
            (* 2.0 y)
            (* 4.0 y))))
  (* (/ h 3) (sum simpson-term 0 inc fixed-n)))

(simpson cube 0 1 100)
            




    


  
