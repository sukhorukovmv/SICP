#lang racket/base

(require rackunit "../../src/chapter1/1.10.rkt")

(check-equal? (A 1 10) 1024)
(check-equal? (A 2 4) 65536)
(check-equal? (A 3 3) 65536)
(print "test passed")
