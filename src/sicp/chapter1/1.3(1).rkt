#lang racket
(define (sum-of-squares-of-top-two a b c)
    (define (max1)
    (cond ((and (>= a b) (>= a c)) a)
          ((and (>= b a) (>= b c)) b)
          (else c)))
    (define (max2)
    (cond ((= a (max1)) (if (> b c) b c))
          ((= b (max1)) (if (> a c) a c))
          ((= c (max1)) (if (> a b) a b))))
   (+ (square (max1)) (square (max2))))

(define (>= a b)
    (or (> a b) (= a b)))

(define (square x) (* x x))

(define (!= a b)
    (or (> a b) (< a b)))
