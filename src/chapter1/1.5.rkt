#lang racket

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
;Затем он вычисляет выражение
(test 0 (p))
