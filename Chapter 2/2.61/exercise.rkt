#lang racket
(require "../sets/ordered.rkt")

(define (adjoin-set element set)
  (let ((before (filter (lambda (x)
                          (< element x))
                        set))
        (after (filter (lambda (x)
                         (> element x))
                       set)))
    (append after (cons element before))))
(provide adjoin-set)