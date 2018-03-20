#lang racket
(require (file "../Rational.nums/rat.rkt"))
(require (file "../../general/primitives.rkt"))

(define (make-rat-normalized n d) 
  (let ((g (* (gcd (abs n) (abs d)) (sign d)))) 
    (cons (/ n g) (/ d g))))

(print-rat (make-rat-normalized (- 3) 6))
(print-rat (make-rat-normalized (- 3) (- 6)))
