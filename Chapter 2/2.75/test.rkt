#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")

(check-expect ((make-from-mag-ang 3 15) 'mag) 3)
(check-expect ((make-from-mag-ang 3 15) 'ang) 15)
(test)