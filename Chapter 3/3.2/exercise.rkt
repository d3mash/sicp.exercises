#lang racket
(define (make-monitored func)
  (let ((init 0))
    (lambda (arg)
      (cond
        ((eq? arg 'how-many-calls?) init)
        ((eq? arg 'reset-count) (set! init 0))
        (else (begin (set! init (+ init 1))
                     (func arg)))))))

(provide make-monitored)