#lang racket/base

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(check-equal? (gcd 2 4) 2)