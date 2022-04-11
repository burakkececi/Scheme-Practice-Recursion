#lang scheme

(define power
  (lambda (n k)
    (cond
      ((zero? k) 1)
      ((negative? k) -1)
      (else (* n (power n (- k 1))))g
      )))

(power 2 3)