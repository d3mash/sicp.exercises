#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(require (file "../2.46/exercise.rkt"))
(define frame-l (make-frame (make-vect 1 1)
                              (make-vect 2 2)
                              (make-vect 2 1)))
(define frame-c (make-frame-c (make-vect 1 1)
                              (make-vect 2 2)
                              (make-vect 2 1)))

(check-expect (get-origin frame-l) '(1 . 1))
(check-expect (get-origin-c frame-c) '(1 . 1))
(check-expect (get-edge1 frame-l) '(2 . 2))
(check-expect (get-edge1-c frame-c) '(2 . 2))
(check-expect (get-edge2 frame-l) '(2 . 1))
(check-expect (get-edge2-c frame-c) '(2 . 1))

(test)