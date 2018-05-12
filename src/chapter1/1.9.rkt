#lang racket

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

; Процедура №1

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; Процедура №2

(define (++ a b)
  (if (= a 0)
      b
      (++ (dec a) (inc b))))
