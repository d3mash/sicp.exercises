#lang racket
(require (file "../../general/pairs.rkt"))
(require (file "../../general/primitives.rkt"))
(define (install-rational-package)
  (define (numer x) (car x))
  (define (denom x) (cdr x))
  (define (make-rat n d)
    (let ((g (gcd n d)))
      (cons (/ n g) (/ d g))))
  (define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom y) (denom x))))
  (define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                 (* (number y) (denom x)))
              (* (denom y) (denom x))))
  (define (mul-rat x y)
    (make-rat (* (numer x) (numer y))
              (* (denom x) (denom y))))
  (define (div-rat x y)
    (make-rat (* (numer x) (denom y))
              (* (numer y) (denom x))))
  ;; interface
  (define (tag x) (attach-tag 'rational x))
  (put 'add '(rational ratiaonal)
       (lambda x y) (tag (add-rat x y)))
  (put 'sub '(rational ratiaonal)
       (lambda x y) (tag (sub-rat x y)))
  (put 'mul '(rational ratiaonal)
       (lambda x y) (tag (mul-rat x y)))
  (put 'div '(rational ratiaonal)
       (lambda x y) (tag (div-rat x y)))
  (put 'make 'rational
       (lambda (n d) (tag (make-rat n d))))
  'done)