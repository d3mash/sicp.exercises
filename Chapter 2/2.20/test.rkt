#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))
(require (file "../2.18/exercise.rkt"))
(require (file "../../general/primitives.rkt"))
(check-expect (same-parity 1 2 3 4 5 6 7) '(1 3 5 7))
(check-expect (same-parity -1 2 -3 -4) '(-1 -3))
(test)