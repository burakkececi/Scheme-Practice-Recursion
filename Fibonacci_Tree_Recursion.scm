#lang scheme

(define (fib n)
  (cond
    ((zero? n) 0)
    ((= n 1) 1)
    (else (+ (fib(- n 2)) (fib(- n 1))))))

(fib 5)