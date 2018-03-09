#lang racket

(define (square x) (* x x))

(define (prime? x)
  (= (smallest-divisor x) x))

(define (smallest-divisor x)
  (divisor-test x 2))

(define (divides? x y)
  (= (remainder x y) 0))

(define (divisor-test x test)
  (cond ((> (square test) x) x)
        ((divides? x test) test)
        (else (divisor-test x (+ test 1)))))


(define (even? n)
  (= (remainder n 2) 0))
(define (prime-seeker bottom count start-time)
  (if (= count 0)
      ((newline)
       (display "ALL DONE!")
       (newline)
       (display "Elapsed time: ")
       (display (- (current-milliseconds) start-time))
       (display " milliseconds")
       )
      (if (even? bottom)
          (prime-seeker (+ bottom 1) count start-time)
          (if (prime? bottom)
               (
                (display bottom)
                (display " ")
               (prime-seeker (+ bottom 2) (- count 1) start-time))
              (prime-seeker (+ bottom 2) count start-time)))))

(define (timed-prime-seeker bottom count)
  (prime-seeker bottom count (current-milliseconds)))
(timed-prime-seeker 1000 3)