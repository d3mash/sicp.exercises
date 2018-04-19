#lang racket
(require (file "../../general/intervals.rkt"))

(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))))

(define r100p1 (make-center-percent 100 1)) 
(define r100p5 (make-center-percent 100 5)) 
(define r1000p1 (make-center-percent 1000 1)) 
(define r1000p5 (make-center-percent 1000 5))
(center (par1 r100p1 r1000p5))
(center (par2 r100p1 r1000p5))
