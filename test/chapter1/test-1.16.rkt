#lang racket/base

(require rackunit "../../src/chapter1/1.16.rkt")

(check-equal? (fast-exp 2 2) 4 "test 1")
(check-equal? (fast-exp 2 3) 8 "test 2") 
(check-equal? (fast-exp 2 4) 16 "test 3")
