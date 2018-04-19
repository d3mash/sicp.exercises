#lang racket
; complete definitions for first-denomination, except-first-denomination and no-more?
; in terms of list operations.
(define (no-more? coins)
  (= (length coins) 0))
(define (first-denomination coins)
  (car coins))
(define (except-first-denomination coins)
  (cdr coins))
        
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))

;does coin-values order matter for cc result? why?

(provide (all-defined-out))