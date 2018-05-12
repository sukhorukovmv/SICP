#lang racket

(define (cube x) (* x x x))
(define e 0.000000000000001)
(define (cube-sqrt x)
  (define (good-enough? guess)
    (< (abs (- (cube guess) x)) e))
  (define (improve guess)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
    (sqrt-iter 1.1))
(provide cube-sqrt)
