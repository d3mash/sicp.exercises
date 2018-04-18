#lang racket
(require (file "../2.7/intervals.rkt"))
(require (file "../2.8/interval-arifm.rkt"))

(define (interval-sign interval)
  (if (and (> (upper-bound interval) 0)
           (> (lower-bound interval) 0))
      1
      (if (and (< (upper-bound interval) 0)
               (< (lower-bound interval) 0))
          -1
          0)))
; checks both ends of interval and outputs as follows:
; 1 for positive intervals
; 2 for negative intervals
; 3 for mixed intervals

(define (mul-interval-improved x y)
  (let ((x-sign (interval-sign x))
        (y-sign (interval-sign y)))
    (cond [(= x-sign 1)
           (cond [(= y-sign 1) (make-interval (* (lower-bound x) (lower-bound y))
                                              (* (upper-bound x) (upper-bound y)))]
                 [(= y-sign -1) (make-interval (* (upper-bound x) (lower-bound y))
                                               (* (lower-bound x) (upper-bound y)))]
                 [(= y-sign 0) (make-interval (* (upper-bound x) (lower-bound y))
                                              (* (upper-bound x) (upper-bound y)))])]
          [(= x-sign -1)
           (cond [(= y-sign 1) (make-interval (* (upper-bound y) (lower-bound x))
                                              (* (upper-bound y) (upper-bound x)))]
                 [(= y-sign -1) (make-interval (* (lower-bound x) (lower-bound y))
                                               (* (upper-bound x) (upper-bound y)))]
                 [(= y-sign 0) (make-interval (* (lower-bound x) (upper-bound y))
                                              (* (upper-bound x) (lower-bound y)))])]
          [(= x-sign 0)
           (cond [(= y-sign 1) (make-interval (* (lower-bound x) (upper-bound y))
                                              (* (upper-bound x) (upper-bound y)))]
                 [(= y-sign -1) (make-interval (* (upper-bound x) (lower-bound y))
                                               (* (upper-bound x) (upper-bound y)))]
                 [(= y-sign 0) (make-interval (min (* (lower-bound x) (upper-bound y)) (* (upper-bound x) (lower-bound y)))
                                              (max (* (lower-bound x) (lower-bound y)) (* (upper-bound x) (upper-bound y))))])])))

(provide (all-defined-out))