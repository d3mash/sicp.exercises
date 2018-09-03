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

(define (contains-symbol? symbol seq)
  (cond ((null? seq) false)
	((eq? symbol (car seq)) true)
	(else (contains-symbol? symbol (cdr seq)))))

(define (encode message tree)
  (if (null? message)
    '()
    (append (encode-symbol (car message) tree)
	    (encode (cdr message) tree))))

(define (encode-symbol symbol tree)
  (define (encode-1 current-branch)
    (if (leaf? current-branch)
      '()
      (let ((next (next-branch symbol current-branch)))
	(cons (car next)
	      (encode-1 (cdr next))))))
  (if (contains-symbol? symbol (symbols tree))
    (encode-1 tree)
    (error "there is no such symbol in the tree")))

(define (next-branch symbol tree)
  (if (contains-symbol? symbol (symbols (left-branch tree)))
    (cons 0 (left-branch tree))
    (cons 1 (right-branch tree))))
    
(provide encode)
(provide encode
         sample-message
         sample-tree)
      
  
