#lang racket
(require (file "../../general/accumulate.rkt"))
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      null
      (cons (accumulate op init (map (lambda (x) (car x))
                                     seqs))
            (accumulate-n op init (map (lambda (x) (cdr x)) seqs)))))
(provide accumulate-n)
