#lang scheme

(define list-<
  (lambda (l1 l2)
    (lists-compare? < l1 l2)))

(define (lists-compare? opr l1 l2)
  (cond
    ((and (= (length l1) 0) (= (length l2) 0)) #t)
    ((and (= (length l1) (length l2))
     (if (opr (car l1) (car l2))
         (lists-compare? opr (cdr l1) (cdr l2))
         #f
         )) #t)
    (else #f)
    ))
 
(list-< '(1 2 3 4) '(2 3 4 5))