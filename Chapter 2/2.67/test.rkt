#lang racket
(require test-engine/racket-tests)
(require "../haffmanTrees/weighted.rkt"
         "../haffmanTrees/primitives.rkt"
         "../haffmanTrees/decode.rkt")
(require "exercise.rkt")

(check-expect (decode sample-message sample-tree) '(A D A B B C A))
(test)
