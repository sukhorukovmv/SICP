#lang racket
(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-of-squares-of-top-two a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c)) 
        ((and (< b a) (< b c)) (sum-of-squares a c)) 
        (else (sum-of-squares a b))))
