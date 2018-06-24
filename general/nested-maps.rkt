#lang racket
(require (file "accumulate.rkt"))
(require (file "enumerate-interval.rkt"))
(require math/number-theory)
(define (unique-pairs n)
  (define interval (enumerate-interval 1 n))
  (flatmap (lambda (i)
             (map (lambda (j) (list i j))
                  (enumerate-interval 1 (- i 1))))
           interval))
            
(define (flatmap proc seq)
  (accumulate append null (map proc seq)))
(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))
(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))
(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum?
               (unique-pairs n))))
(prime-sum-pairs 6)
(provide (all-defined-out))