#lang racket

(define (halve a)
  (/ a 2))
(define (double a)
  (+ a a))
(define (* a b)
  (iter* 0 a b))
(define (iter* rez a b)
  (cond ((= b 0) rez)
        ((even? b) (iter* rez (double a) (halve b)))
        (else (iter* (+ rez a) a (- b 1)))))

