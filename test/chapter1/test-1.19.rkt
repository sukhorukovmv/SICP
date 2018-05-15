#lang racket/base

(require rackunit "../../src/chapter1/1.19.rkt")

(check-equal? (fib 1) 1 "test 1")
(check-equal? (fib 2) 1 "test 2")
(check-equal? (fib 5) 5 "test 3")
(check-equal? (fib 6) 8 "test 4")
