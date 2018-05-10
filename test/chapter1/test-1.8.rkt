#lang racket/base

(require rackunit "../../src/chapter1/1.8.rkt")

(check-equal? (cube-sqrt 27) 3.0 "test 1")
