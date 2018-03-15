#lang racket
(require (file "../1.37/exercise.rkt"))
(define (tan-cf x k)
  (cont-frac-iter (lambda (i) (if (= i 1) x (- (* x x))))
                  (lambda (i) (+ (* 2.0 (- i 1)) 1))
                  k))
(tan-cf 20 30)
(provide tan-cf)