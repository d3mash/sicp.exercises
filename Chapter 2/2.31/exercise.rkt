#lang racket
(define (tree-map func tree)
  (map (lambda (subtree)
         (if (pair? subtree)
             (tree-map func subtree)
             (func subtree)))
       tree))

(provide tree-map)