#lang racket/base

(define (square x) (* x x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt x)
  (define (square b) (* b b))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (new-if (good-enough? guess )
            guess
            (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(define (average x y)
    (/ (+ x y) 2))

