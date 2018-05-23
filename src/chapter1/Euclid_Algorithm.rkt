#lang racket/base

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(provide gcd)

