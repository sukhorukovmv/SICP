#lang racket/base

(require rackunit "../../src/chapter1/1.19.rkt")

(check-equal? (fib 1) 4 "test 1")
(check-equal? (fib 2) 2 "test 2")
(check-equal? (fib 5) 7 "test 3")
(check-equal? (fib 6) 8 "test 4")
