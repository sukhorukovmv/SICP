#lang racket/base

(require rackunit "../../src/chapter1/1.29.rkt")
(define (cube x) (* x x x))

(check-equal? (sympson cube 0 1 100) 1/4 "test 1")
(check-equal? (sympson cube 0 1 1000) 1/4 "test 1")

