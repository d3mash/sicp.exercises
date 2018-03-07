#lang racket
(define (pow base exp)
  (if (= exp 0)
      1
      (* base (pow base (- exp 1)))))
; classic iteratibe fib counter
(define (fib n)
  (define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 n))

; definitions from the book
(define psy (/ (+ 1 (sqrt 5)) 2))
(define sygma (/ (- 1 (sqrt 5)) 2))
;psy^n / sqrt(5)
(define (fibonacci n)
  (/ (- (pow psy n) (pow sygma n)) (sqrt 5)))
; (psy^n - sygma^n)/ sqrt 5
(define (fibonacci-raw n)
  (/ (pow psy n) (sqrt 5)))
(fib 6)
(fibonacci 6)
(fibonacci-raw 6)