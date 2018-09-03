#lang racket
(require "../haffmanTrees/weighted.rkt"
         "../haffmanTrees/primitives.rkt"
         "../haffmanTrees/decode.rkt")

; sample tree and message from 2.67
(define sample-tree
  (make-code-tree (make-leaf 'A 4)
                  (make-code-tree
                   (make-leaf 'B 2)
                   (make-code-tree (make-leaf 'D 1)
                                   (make-leaf 'C 1)))))
(define sample-message '(A D A B B C A))

(define (encode message tree)
  (if (null? message)
      '()
      (append (encode-symbol (car message) tree)
              (encode (cdr message) tree))))
(define (encode-symbol symbol tree)
  (cond ((leaf? tree) (if (eq? (symbol-leaf tree) symbol)
                          '()
                          (error "symbol not in decoding tree" symbol)))
        ((eq? symbol (symbol-leaf (left-branch tree))) '(0))
        (else (append '(1) (encode-symbol symbol (right-branch tree))))))
(provide encode
         sample-message
         sample-tree)
      
  
