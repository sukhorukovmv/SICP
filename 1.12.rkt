#lang racket
(define (Pascal a b)
  ( if (or (= a b) (= a 1) (= b 1)) 
       1
       (+ (Pascal (- a 1) b) (Pascal (- a 1) (- b 1)))))
