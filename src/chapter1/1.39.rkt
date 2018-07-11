#lang racket/base

(define (cont-frac n d k) 
  (define (iter acc k)
    (if (= k 1)
        (/ (n k) acc)
        (iter (+ (d (- k 1)) (/ (n k) acc))
              (- k 1))))
  (iter (d k) k))

(define (tan-cf x k)
  (cont-frac (lambda (i) (if (= i 1) x (* x x)))
             (lambda (i) (if (= i 1) 1 (- (* i 2) 1)))
             k))