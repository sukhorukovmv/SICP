#lang racket/base

(require rackunit "../../src/chapter1/1.11.rkt")

(check-equal? (f 0) 0 "test f 0")
(check-equal? (f 1) 1 "test f 1")
(check-equal? (f 2) 2 "test f 2")
(check-equal? (f 3) 3 "test f 3")
(check-equal? (f 4) 6 "test f 4")
(check-equal? (f 5) 11 "test f 5")


(check-equal? (f-iter 0) 0 "test f-iter 0")
(check-equal? (f-iter 1) 1 "test f-iter 1")
(check-equal? (f-iter 2) 2 "test f-iter 2")
(check-equal? (f-iter 3) 3 "test f-iter 3")
(check-equal? (f-iter 4) 6 "test f-iter 4")
(check-equal? (f-iter 5) 11 "test f-iter 5")
