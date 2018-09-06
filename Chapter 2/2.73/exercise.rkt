#lang racket
(define (operator exp) (car exp))
(define (operands exp) (cdr exp))
(define (tag type contents)
  (cons type contents))
(define (type obj)
  (car obj))
(define (contents obj)
  (cdr obj))


(require (file "../deriv/deriv-primitives.rkt"))
; (b) start
(define (deriv-sum exp var)
  (make-sum (deriv-sum (addend exp) var)
            (deriv-sum (augend exp) var)))
(define (deriv-product exp var)
  (make-sum (make-product (multiplier exp)
                          (deriv (multiplicand exp) var))
            (make-product (deriv (multiplier exp) var)
                          (multiplicand exp))))
; (c) start
(require (except-in (file "../2.56/exercise.rkt")
                    deriv))
(define (deriv-power exp var)
  (make-product (make-product (exponent exp)
                              (make-exponentiation (base exp)
                                                   (- (exponent exp) 1)))
                (deriv (base exp) var)))
; (c) end
(define (install-deriv-package)
  (put 'deriv '+ deriv-sum)
  (put 'deriv '* deriv-product)
  (put 'deriv '** deriv-power)
  'done)
; (b) end

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        (else ((get 'deriv (operator exp)) (operands exp)
                                           var))))

; (a) - in deriv procedure generic deriv is called through 'get
; we cannot use the same generic approach to number? and variable? because
; they do not use the same operator + operands structure

; (d) - the only change needed for this deriv system is the order of put arguments
; as follows - put '*operator 'deriv procedure-name'