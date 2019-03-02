(define (install-scheme-number-package)
  (define (tag x)
    (attach-tag 'scheme-number x))
  (put 'add '(scheme-number scheme-number)
       (lambda (a b) (tag (+ a b))))
  (put 'sub '(scheme-number scheme-number)
       (lambda (a b) (tag (- a b))))
  (put 'mul '(scheme-number scheme-number)
       (lambda (a b) (tag (* a b))))
  (put div '(scheme-number scheme-number)
       (lambda (a b) (tag (/ a b))))
  (put 'make 'scheme-number
       (lambda (x) (tag x)))
  'done)

(define (make-scheme-number n)
  ((get 'maker 'scheme-number) n))

(provide (all-defined-out))