#lang racket/base

(require "./1.21.rkt");smallest-divisor v1.0
(require "./Euclid_Algorithm.rkt")
(define (prime? n)
  (= n (smallest-divisor n)))

(define (accumulatef combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a)
                    (accumulatef combiner null-value term (next a) next b filter))
          (accumulatef combiner null-value term (next a) next b filter))))

(define (accumulatef-iter combiner null-value term a next b filter)
  (define (iter a result)
    (if (> a b)
        result
        (if (filter a)
            (iter (next a) (combiner result (term a)))
            (iter (next a) result))))
    (iter a null-value))
                  

(define (sum-sqrt-prime a b)
  (define (next arg) (+ arg 1))
  (define (term-sqrt arg) (* arg arg))
  (accumulatef-iter + 0 term-sqrt a next b prime?))

(define (product a b)
  (define (next arg) (+ arg 1))
  (define (filter k)
    (= (gcd k b) 1))
  (define (term k) k)
  (accumulatef-iter * 1 term a next b filter))

(provide product sum-sqrt-prime)