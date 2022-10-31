#lang sicp

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? old-guess new-guess)
  (< (abs (- old-guess new-guess)) 0.001))

(define (sqrt-iter old-guess new-guess x)
  (if (good-enough? old-guess new-guess)
      new-guess
      (sqrt-iter new-guess
                 (improve new-guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter x 1.0 x))