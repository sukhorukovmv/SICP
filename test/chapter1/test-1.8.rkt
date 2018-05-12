#lang racket/base

(require rackunit "../../src/chapter1/1.8.rkt")

(check-equal? (cube-sqrt 27) 3.0 "test 1")
(check-equal? (cube-sqrt 0.125) 0.5 "test 2")
(check-equal? (cube-sqrt 8) 2.0 "test 3")
(check-equal? (cube-sqrt 125) 5.0 "test 4")
