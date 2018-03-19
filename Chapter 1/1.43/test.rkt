#lang racket
(require "exercise.rkt")
(require test-engine/racket-tests)
(check-expect ((repeated-rec inc 3) 1) 4)
(check-expect ((repeated-rec square 2) 2) 16)
(check-expect ((repeated-rec cube 3) 2) 134217728)
(check-expect ((repeated-rec cube 2) 3) 19683)
(check-expect ((repeated-iter inc 3) 1) 4)
(check-expect ((repeated-iter square 2) 2) 16)
(check-expect ((repeated-iter cube 3) 2) 134217728)
(check-expect ((repeated-iter cube 2) 3) 19683)


(test)