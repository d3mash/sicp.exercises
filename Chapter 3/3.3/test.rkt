#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")
(define acc (make-account 1000 'secret))

(check-expect ((acc 'withdraw) 600 'secret) 400)
(check-expect ((acc 'withdraw) 400 'wrong) 'Denied!)
(check-expect ((acc 'deposit) 100 'secret) 500)
(check-expect ((acc 'withdraw) 501 'secret) 'No-money)

(test)