#lang racket
(define (deep-reverse list)
  (define (iter input output)
    (if (null? input)
        output
        (let ((first (car input))
              (rest (cdr input)))
          (if (pair? first)
              (iter rest (cons (deep-reverse first) output))
              (iter rest (cons first output))))))
  (iter list null))
(provide deep-reverse)