#lang racket
(require "../haffmanTrees/weighted.rkt"
         "../haffmanTrees/primitives.rkt"
         "../haffmanTrees/decode.rkt"
         (file "../2.69/exercise.rkt")
         (file "../2.68/exercise.rkt"))
(generate-huffman-tree '((A 2)
                                                 (BOOM 1)
                                                 (GET 2)
                                                 (JOB 2)
                                                 (NA 16)
                                                 (SHA 3)
                                                 (YIP 9)
                                                 (WAH 1)))
(define lyrics-alphabet (generate-huffman-tree '((A 2)
                                                 (BOOM 1)
                                                 (GET 2)
                                                 (JOB 2)
                                                 (NA 16)
                                                 (SHA 3)
                                                 (YIP 9)
                                                 (WAH 1))))
(define lyrics '(GET A JOB SHA NA NA NA NA NA NA NA NA GET A JOB SHA NA NA NA NA NA NA NA NA WAH YIP YIP YIP YIP YIP YIP YIP YIP YIP SHA BOOM))

(encode lyrics lyrics-alphabet)