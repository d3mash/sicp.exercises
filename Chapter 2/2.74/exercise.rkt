#lang racket
(define (get-record employee file)
  ((get 'get-record 'file') employee))
(define (get-salary hq-file)
  ((get 'get-salary (file-division hq-file))
   (original-record hq-file)))
(define (find-employee-record employee files)
  (cond ((null? files) (error "FIND-EMPLOYEE-RECORD : No such employee." employee))
        ((has-record? employee (file-division (car files)))
         (get-record employee (car files)))
        (else (find-employee-record
               employee (cdr files)))))