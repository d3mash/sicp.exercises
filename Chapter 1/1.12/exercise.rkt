#lang racket
;SOLVE FOR 'K' ELEMENT IN ROW 'N'
;NO RECURSION
(define (pascal-binom row element)
  (define (factorial x)
    (define (factorial-iter x counter acc)
      (if (= counter x)
          acc
          (factorial-iter x (+ counter 1) (* acc counter))))
    (factorial-iter x 1 1))
  (if (not (or (< row 0) (< element 0)))
      0
      (/ (factorial row) (* (factorial element) (factorial (- row element))))))

(define (pascal-recurs row col)
  (cond ((or (> col row) (< col 1)) 0)
        ((= col 1) 1)
        (else (+ (pascal-recurs (- row 1) (- col 1))
                 (pascal-recurs(- row 1) col)))))
(pascal-recurs 4 2)

(provide pascal-binom)
(provide pascal-recurs)
