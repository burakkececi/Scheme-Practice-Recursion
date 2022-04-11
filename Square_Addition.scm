#lang scheme

(define (sum square a b)
  (if (> a b)
      0
      (+ (square a) (sum square (+ a 1) b))))

(define (square a) (* a a))

(sum square 2 5)