#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))

(check-expect (queens 4) '(((2 . 1) (4 . 2) (1 . 3) (3 . 4)) ((3 . 1) (1 . 2) (4 . 3) (2 . 4))))
(check-expect (length (queens 8)) 92)
(test)