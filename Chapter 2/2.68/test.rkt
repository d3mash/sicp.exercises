#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(require "../haffmanTrees/weighted.rkt"
         "../haffmanTrees/primitives.rkt"
         "../haffmanTrees/decode.rkt")
(define invalid-message
  (make-code-tree (make-leaf 'E 4)
                  (make-code-tree
                   (make-leaf 'X 2)
                   (make-code-tree (make-leaf 'Z 1)
                                   (make-leaf 'B 1)))))
(check-expect (encode sample-message sample-tree) '(0 1 1 0 0 1 0 1 0 1 1 1 0))
(check-error (encode invalid-message sample-tree))
(test)