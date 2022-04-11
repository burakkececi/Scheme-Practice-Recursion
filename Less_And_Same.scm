#lang scheme

(define (less_and_same? list1 list2)
  (cond
    ((and (= (length list1) 0) (= (length list2) 0)) #t)
    ((and(= (length list1) (length list2))
     (if (> (car list1) (car list2))
         #f
         (less_and_same? (cdr list1) (cdr list2)))) #t)
    (else #f)))

(less_and_same? '(2 2 3 4 5 6) '(1 3 4 5 6 7))
  