#lang racket/base

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (sum-cubes a b)
  (define (inc n) (+ n 1))
  (define (cube arg) (* arg arg arg))
  (sum cube a inc b))

(provide sum-cubes)
