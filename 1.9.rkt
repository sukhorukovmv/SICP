#lang racket

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
;В первом случае очевидно будет
;линейно-рекурсивный.

(define (++ a b)
  (if (= a 0)
      b
      (++ (dec a) (inc b))))

;Во втором случае линейно-итеративный



