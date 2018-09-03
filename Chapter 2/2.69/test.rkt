#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(require "../haffmanTrees/weighted.rkt"
         "../haffmanTrees/primitives.rkt"
         "../haffmanTrees/decode.rkt")

(check-expect (generate-huffman-tree '((A 4) (B 2) (C 1) (D 1))) '((leaf A 4) ((leaf B 2) ((leaf D 1) (leaf C 1) (D C) 2) (B D C) 4) (A B D C) 8))
(test)
