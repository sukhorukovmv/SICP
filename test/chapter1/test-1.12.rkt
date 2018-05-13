#lang racket/base

(require rackunit "../../src/chapter1/1.12.rkt")

(check-equal? (Pascal 1 1) 1 "test 1")
(check-equal? (Pascal 2 1) 1 "test 2")
(check-equal? (Pascal 2 2) 1 "test 3")
(check-equal? (Pascal 3 2) 2 "test 4")
(check-equal? (Pascal 4 2) 3 "test 5")
(check-equal? (Pascal 5 3) 6 "test 6")
(check-equal? (Pascal 6 3) 10 "test 7")

