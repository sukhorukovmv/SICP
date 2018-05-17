#lang racket/base

(require rackunit "../../src/chapter1/1.21.rkt")

(check-equal? (smallest-divisor 199) 199 "test 1")
(check-equal? (smallest-divisor 1999) 1999 "test 2")
(check-equal? (smallest-divisor 19999) 7 "test 3")
(check-equal? (smallest-divisor 6) 2 "test 4")
