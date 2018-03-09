#lang racket
(define (even? n)
  (= (remainder n 2) 0))
(define (square x) (* x x))
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base ( - exp 1) m))
                   m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times starttime)
  (cond ((= times 0) (true
                      (display " is prime, time elapsed: ")
                      (display (- (current-milliseconds) starttime))))
        ((fermat-test n) (fast-prime? n (- times 1) starttime))
        (else false)))

(define (timed-fast-prime? n times)
  (display n)
  (fast-prime? n times (current-milliseconds)))

(timed-fast-prime? 1019 30)
               