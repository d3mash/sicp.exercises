#lang racket
(require test-engine/racket-tests)
(require "exercise.rkt")

(check-expect (equal? '(this is a list) '(this is a list)) #t)
(check-expect (equal? '(this is a list) '(this (is a) list)) #f)

(test)