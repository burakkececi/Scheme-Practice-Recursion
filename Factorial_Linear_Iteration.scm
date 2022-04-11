#lang scheme

(define (factorial n)
  (fact_iter 1 1 n))

(define (fact_iter product counter max_product)
  (if (> counter max_product)
      product
      (fact_iter(* product counter) (+ counter 1) max_product)))

(factorial 6)