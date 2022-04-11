#lang scheme

(define power
  (lambda (x k y)
    (cond
      ((zero? k) y)
      ((negative? k) -1)
      (else (power x (- k 1) (* x y)))))
      )
(power 2 3 1)