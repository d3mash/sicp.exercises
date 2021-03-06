#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")

(define my-account (make-account 1000 'secret 0))
(check-expect ((my-account 'withdraw) 600 'secret) 400)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'secret) 500)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'Denied!)
(check-expect ((my-account 'deposit) 100 'wrong) 'ALARM)
(test)