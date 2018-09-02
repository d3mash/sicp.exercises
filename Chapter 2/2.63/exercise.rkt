#lang racket
(require "../sets/treeSets.rkt")

; the following trees represent a set of {1, 3, 5, 7, 9, 11}
(define tree1 (make-tree 7
                         (make-tree 3 1 5)
                         (make-tree 9 null 11)))
(define tree2 (make-tree 3
                         1
                         (make-tree 7
                                    5
                                    (make-tree 9
                                               null
                                               11))))
(define tree3 (make-tree 5
                         (make-tree 3 1 null)
                         (make-tree 9 7 11)))

(define (tree-to-list1 tree)
  (if (null? tree)
      '()
      (append (tree-to-list1 (left-branch tree))
              (cons (entry tree)
                    (tree-to-list1 (right-branch tree))))))

(define (tree-to-list2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
        result
        (copy-to-list (left-branch tree)
                      (cons (empty tree)
                            (copy-to-list (right-branch tree)
                                          result-list)))))
  (copy-to-list tree '()))

; the results of applying both procedures to trees above are identical
; however, the steps growth of first one is teta(logn), due to the
; implemenation of "append", while the second one's growth rate is
; teta(n)