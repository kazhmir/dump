#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (double n) (A 0 n))
(define (two-to-the-power-of n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))