#lang racket

(provide sqrt)
(define (sqrt x)
  (define (square x) (* x x))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(define (average x y)
    (/ (+ x y) 2))