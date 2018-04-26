#lang racket
(define (square x) (* x x))
(define (square-tree tree)
  (map (lambda (subtree)
         (if (pair? subtree)
             (square-tree subtree)
             (square subtree)))
       tree))
(provide square-tree)