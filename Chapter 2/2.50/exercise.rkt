#lang racket
(define (flip-horiz painter)
  (transform-painter painter
                     (make-vect  1.0 0)
                     (make-vect 0 0)
                     (make-vect 1.0 1.0)))

(define (turn180 painter)
  (transform-painter painter
		     (make-vect 1.0 1.0)
		     (make-vect 0 1.0)
		     (make-vect 1.0 0)))

(define (turn270 painter)
  (transform-painter painter
                     (make-vect 0 1.0)
                     (make-vect 0 0)
                     (make-vect 1.0 1.0)))
(provide (all-defined-out))