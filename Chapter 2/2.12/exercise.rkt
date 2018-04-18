#lang racket
(require (file "../2.7/intervals.rkt"))
(require (file "../2.8/interval-arifm.rkt"))
(require (file "../../general/primitives.rkt"))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent center percent)
  (define absolute-diff
    (* (/ center 100) percent))
  (if (= center 0)
      (error "center can't be zero")
      
      (make-interval (- center absolute-diff)
                     (+ center absolute-diff))))

(define (percent interval)
  (abs (* (/ ( - (upper-bound interval) (center interval)) (center interval)) 100)))
(provide (all-defined-out))