#lang racket
(require (file "../../general/pairs.rkt"))
(require (file "../../general/primitives.rkt"))

; introducing rational numbers abstraction via built-in cons car and cdr
(define (make-rat n d) 
  (let ((g (* (gcd (abs n) (abs d)) (sign d)))) 
    (cons (/ n g) (/ d g))))
(define (numer x) (car x))
(define (denom x) (cdr x))
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

; simple operations with rational numbers
; presuming we alreadey have (make-rat) (numer) and (denom)

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))
(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))
(define (equal-rat x y)
  (= (* (numer x) (denom y)) (* (numer y) (denom x))))

(provide (all-defined-out))