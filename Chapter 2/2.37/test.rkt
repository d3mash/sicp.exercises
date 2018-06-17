#lang racket
(require (file "exercise.rkt"))
(require test-engine/racket-tests)
(check-expect (matrix-*-matrix (list (list 1 2 3) (list 4 5 6) (list 7 8 9))
                               (list (list 9 8 7) (list 6 5 4) (list 3 2 1)))
              '((30 24 18) (84 69 54) (138 114 90)))
(test)