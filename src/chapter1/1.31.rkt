#lang racket/base

(define (product a term b next)
  (if (> a b)
      1
      (* (term a) (product (next a) term b next))))

(define (product-iter a term b next)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (factorial n)
  (define (next a) (+ a 1))
  (define (term a) a)
  (product-iter 1 term n next))
    
(define (pi n)
  (define (square arg) (* arg arg))
  (define (term a) 
    (/ (* (- a 1) (+ a 1)) (square a))) 
  (define (next a) 
    (+ a 2)) 
  (* 4 (product-iter 3 term n next)))

(provide factorial pi)
