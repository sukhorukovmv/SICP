#lang racket/base

(require rackunit "../../src/chapter1/1.33.rkt")

(check-equal? (factorial-iter 6) 720 "test 3")
