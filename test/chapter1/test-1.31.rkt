#lang racket/base

(require rackunit "../../src/chapter1/1.31.rkt")

(check-equal? (factorial 1) 1 "test 1")
(check-equal? (factorial 5) 120 "test 2")
(check-equal? (factorial 6) 720 "test 3")