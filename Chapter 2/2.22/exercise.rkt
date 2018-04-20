#lang racket
(require (file "../../general/primitives.rkt"))
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items null))
(square-list (list 1 2 3))

; (square-list (list 1 2 3))
; '(9 4 1)
; because of the cons adding element to the head of list
; (1 2 3) - ()
; (2 3) - (1)
; (3) - (4, 1)
; () - (9, 4, 1)
; swapping cons args does not work either because first arg must be item and second must be list
