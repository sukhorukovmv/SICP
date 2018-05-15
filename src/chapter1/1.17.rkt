#lang racket/base
(define (* a b) 
  (cond ((= b 0) 0)
        ((even? b) (double (* a (halve b))))
        (else (+ a (* a (- b 1))))))
(define (halve a)
  (/ a 2))
(define (double a)
  (+ a a))

(provide * halve double)
