#lang racket
(require "./smallest-divisor.rkt")

(define (prime? n)
  (= n  (smallest-divisor n)))


