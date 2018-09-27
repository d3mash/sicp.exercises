#lang racket
(define (make-from-mag-ang mag ang)
  (define (dispatch op)
    (cond ((eq? op 'mag) mag)
          ((eq? op 'ang) ang)
          ((eq? op 'real-part)
           (* mag (cos ang)))
          ((eq? op 'imag-part)
           (* mag (sin ang)))
          (else
           (error "Unknown op" op))))
  dispatch)

(define (apply-generic op arg) (arg op))
(provide make-from-mag-ang)