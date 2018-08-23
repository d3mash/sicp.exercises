#lang racket
(define (=number? exp num)
  (and (number? exp) (= exp num)))

(define (variable? x) (symbol? x))
(define (same-variable? x y) (and (variable? x) (variable? y) (eq? x y)))

(define (make-sum x y)
  (cond ((=number? x 0) y)
        ((=number? y 0) x)
        ((and (number? x) (number? y)) (+ x y))
        (else (list '+ x y))))
(define (addend x) (cadr x))
(define (augend x) (caddr x))
(define (sum? x) (and (pair? x) (eq? (car x) '+)))

(define (make-product x y)
  (cond ((or (=number? x 0) (=number? y 0)) 0)
        ((=number? x 1) y)
        ((=number? y 1) x)
        ((and (number? x) (number? y)) (* x y))
        (else (list '* x y))))
(define (multiplicand x) (cadr x))
(define (multiplier x) (caddr x))
(define (product? x) (and (pair? x) (eq? (car x) '*)))

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplier exp)
                        (deriv (multiplicand exp) var))
          (make-product (deriv (multiplier exp) var)
                        (multiplicand exp))))
        (else
         (error "unknown expression type @ DERIV" exp))))
(provide =number?
         variable?
         same-variable?
         make-sum
         addend
         augend
         sum?
         make-product
         multiplicand
         multiplier
         product?)