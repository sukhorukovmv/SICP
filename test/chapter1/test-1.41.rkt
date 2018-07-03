#lang racket/base 

(require rackunit "../../src/chapter1/1.41.rkt")

(define (inc x) (+ x 1))
(define (square x) (* x x))

(check-equal? ((double inc) 1) 3)
(check-equal? ((double inc) 15) 17)
(check-equal? ((double square) 2) 16)
(check-equal? ((double square) 3) 81)
