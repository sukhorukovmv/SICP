#lang racket/base
 
(require rackunit
         "../../src/sicp/chapter2/file.rkt")

(check-equal? (my-+ 1 1) 2 "Simple addition")
(check-equal? (my-* 1 2) 2 "Simple multiplication")
