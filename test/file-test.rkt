#lang racket/base
 
(require rackunit
         "../src/chapter2/file.rkt")

(check-equal? (my-+ 1 1) 2 "Simple addition")
(check-equal? (my-+ 1 1) 2)
(check-equal? (my-* 1 2) 4 "Simple multiplication")
(print "Test passed")
