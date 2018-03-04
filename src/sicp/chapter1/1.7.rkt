#lang racket

(define e 0.0001)

(define (sqrt x)
  (define (square x) (* x x))
  
(define (good-enough?v2.0 guess)
  (< (abs (- guess (improve guess))) e)) 
  
  (define (improve guess)
    (average guess (/ x guess)))
  
  (define (sqrt-iter guess)
    (if (good-enough?v2.0 guess)
        guess
        (sqrt-iter (improve guess))))
  
  (sqrt-iter 1.0))

(define (average x y)
    (/ (+ x y) 2))

