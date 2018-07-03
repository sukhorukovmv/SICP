#lang racket/base

(define (double f)
  (lambda (x) (f (f x))))

(provide double)
