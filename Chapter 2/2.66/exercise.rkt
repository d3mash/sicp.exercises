#lang racket
; define a lookup procedure for database designed as a binary tree
; in which the elements are sorted by numeric key values


; in this procedure we assume that the abstractions to get keys of elements are already implemented
; as get-key

(define (lookup key database)
  (let ((current-key (get-key (entry database))))
    (cond ((null? database) #f)
          ((= current-key key) (get-key (entry database)))
          ((< current-key key) (lookup key (left-branch database)))
          ((> current-key key) (lookup key (right-branch database))))))

  