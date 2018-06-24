#lang racket
(require (file "../../general/enumerate-interval.rkt"))
(require (file "../../general/nested-maps.rkt"))
(require (file "../../general/accumulate.rkt"))

;Напишите процедуру, которая находит все такие упорядоченные тройки
;различных положительных целых чисел i, j и k, меньших или равных данному целому
;числу n, сумма которых равна данному числу s.
(define (list-sum l)
  (accumulate + 0 l))

(define (unique-triplets bound)
  (flatmap (lambda (i)
             (flatmap (lambda (j)
                        (map (lambda (k)
                               (list i j k))
                             (enumerate-interval 1  bound)))
                      (enumerate-interval 1 bound)))
           (enumerate-interval 1 bound)))
(define (triplets-with-sum bound sum)
  (filter (lambda (x) (= (list-sum x) sum))
          (unique-triplets bound)))


(provide triplets-with-sum)
  
  