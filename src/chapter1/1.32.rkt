#lang racket/base

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner result (term a)))))
  (iter a 1))

(define (factorial n)
  (define (next a) (+ a 1))
  (define (term a) a)
  (accumulate * 1 term 1 next n))

(define (factorial-iter n)
  (define (next a) (+ a 1))
  (define (term a) a)
  (accumulate-iter * 1 term 1 next n))

(provide factorial factorial-iter)


