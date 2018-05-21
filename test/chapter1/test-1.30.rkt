#lang racket/base

(require rackunit "../../src/chapter1/1.30.rkt")

(check-equal? (sum-cubes 2 2) 8 "test 1")
(check-equal? (sum-cubes 1 10) 3025 "test 2")
(check-equal? (sum-cubes 2 20) 44099 "test 3")
(check-equal? (sum-cubes 6 4) 0 "test 4")
