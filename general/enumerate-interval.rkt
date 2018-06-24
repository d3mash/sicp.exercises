#lang racket
(define (enumerate-interval a b)
  (define (iter acc current)
    (if (> current b)
        acc
        (iter (append acc (list current)) (+ current 1))))
  (iter null a))
(provide enumerate-interval)