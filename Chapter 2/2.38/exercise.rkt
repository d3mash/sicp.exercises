#lang racket
(require (file "../../general/accumulate.rkt"))
(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))
(define (fold-right op initial sequence)
  (accumulate op initial sequence))

(provide fold-left
         fold-right)

; свойство, которому должна удовлетворять op для получения одинаковых результатов с
; fold-left и fold-right - коммутативность