#lang racket
(require test-engine/racket-tests)
(require (file "exercise.rkt"))
(check-expect ((compose square inc) 1) 4)
(check-expect ((compose square inc) 5) 36)
(test)