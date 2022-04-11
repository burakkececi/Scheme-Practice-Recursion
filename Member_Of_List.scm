#lang scheme

(define (fmember atom l1)
 (if (=(length l1) 0) #f
  (if (eq? atom (car l1))
      #t
      (fmember atom (cdr l1)))))

(fmember 'E '(A B C D))