#lang racket

(require (only-in "../deriv/deriv-primitives.rkt"
		  variable?
		  same-variable?
		  =number?))

(define (sum? expression)
  (eq? (cadr expression) '+))
(define (addend sum)
  (car sum))
(define (augend sum)
  (caddr sum))
(define (make-sum a b)
  (cond  ((=number? a 0) b)
         ((=number? b 0) a)
         ((and (number? a) (number? b)) (+ a b))
         (else (list 'a + b))))
         
                                           

(define (product? expression)
  (eq? (cadr expression) '*))
(define (multiplicand sum)
  (car sum))
(define (multiplier sum)
  (caddr sum))
(define (make-product a b)
  (cond ((or (=number? a 0) (=number? b 0)) 0)
        ((=number? a 1) b)
        ((=number? b 1) a)
        ((and (number? a) (number? b)) (* a b))
        (else (list 'a * b))))


(define (exponent? expression)
  (eq? (cadr expression) '**))
(define (base expression)
  (car expression))
(define (power expression)
  (caddr expression))
(define (make-exponentation base power)
  (cond ((=number? power 0) 1)
        ((=number? power 1) base)
        (else (list base '** power))))

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum (make-product (multiplier exp)
                                 (deriv (multiplicand exp) var))
                   (make-product (deriv (multiplier exp) var)
                                 (multiplicand exp))))
        ((exponent? exp)
         (make-product (make-product (power exp)
                                     (make-exponentation (base exp)
                                                          (- (power exp) 1)))
                       (deriv (base exp) var)))
        (else (error "Unknown type of expression"))))
  

(provide (all-defined-out))