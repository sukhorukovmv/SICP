#lang racket/base

(require rackunit "../../src/chapter1/1.3(1).rkt")

(check-equal? (sum-of-squares-of-top-two 4 6 9) 117 "test 1")
(check-equal? (sum-of-squares-of-top-two 5 2 3) 34 "test 2")
(check-equal? (sum-of-squares-of-top-two 34 67 21) 5645 "test 3")
(check-equal? (sum-of-squares-of-top-two 234 1213 9913) 99738938 "test 4")
(check-equal? (sum-of-squares-of-top-two 4 9 10) 181 "test 5")
