#lang racket/base

(require rackunit "../../src/chapter1/1.17.rkt")

(check-equal? (* 2 2) 4 "test 1")
(check-equal? (* 5 5) 25 "test 2")
(check-equal? (* 6 6) 36 "test 3")
(check-equal? (* 3 3) 9 "test 4")
