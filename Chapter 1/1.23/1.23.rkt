#lang racket

(define (square x) (* x x))
(define (smallest-divisor n)
  (check-iter n 2))

(define (divides? a b)
  (= (remainder a b) 0))

(define (next test)
  (if (= test 2) 3
      (+ test 2)))

(define (check-iter n test)
  (cond ((> (square test) n) n)
        ((divides? n test) test)
        (else (check-iter n (next test)))))

(define (prime? n)
  (= n (smallest-divisor n)))


(define (timed-prime? n)
  (display n)
  (time-prime-test n (current-milliseconds)))

(define (time-prime-test n starttime)
  (if (= (timed-smallest-divisor n 2 starttime) n)
      ((display " is prime")
       (display " elapsed time ")
       (display (- (current-milliseconds) starttime)))
      ((display " is not prime"))))

(define (timed-smallest-divisor n test starttime)
  (cond ((> (square test) n) n)
        ((divides? n test) test)
        (else (timed-smallest-divisor n (next test) starttime)))
  )

(timed-prime? 1019)
