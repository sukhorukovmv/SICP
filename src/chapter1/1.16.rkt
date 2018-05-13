#lang racket/base
(define (fast-exp b n) 
  (fast-exp-iter 1 b n))
(define (fast-exp-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-exp-iter a (square b) (/ n 2)))
        (else (fast-exp-iter (* a b) b (- n 1)))))

(define (square x) (* x x))

(provide fast-exp)
