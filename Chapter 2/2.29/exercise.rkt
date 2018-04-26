#lang racket
(define (make-mobile left right)
  (list left right))
; (a) make left-branch right-branch selectors and branch-length + branch-structure
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cadr mobile))

(define (make-branch length structure)
  (list length structure))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cadr branch))
; (b) make total-weight as in total weight for a mobile

(define (total-weight mobile)
  (define (branch-weight branch)
    (if (pair? (branch-structure branch))
        (total-weight (branch-structure branch))
        (branch-structure branch)))
  (+ (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile))))

(define first-branch (make-branch 4 5))
(define second-branch (make-branch 4 5))
(define test-mobile (make-mobile first-branch second-branch))
(total-weight test-mobile)

; (c) check mobile for balance - as in len(left)*weight(left) = len(right)*weight(right)

(define (balanced? mobile)
  (define (branch-revolve-momentum branch)
    (* (branch-structure branch) (branch-length branch)))
  (define (branch-balanced? branch)
     (if (pair? (branch-structure branch)) 
        (balanced? (branch-structure branch)) 
        true))
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (and (branch-balanced? right)
         (branch-balanced? left)
         (= (branch-revolve-momentum left) (branch-revolve-momentum right)))))

    
        
    
    
    
    
    