#lang racket/base

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))


(define (sympson f a b n)
  (define h (/ (- b a) n))
  (define (term k)
    (define (coef k)
      (cond ((= k 0) 1)
            ((= k n) 1) 
            ((even? k) 2)
            (else 4)))
    (* (coef k) (f (+ a (* k h)))))
  (define (inc arg) (+ arg 1))
  (* (/ h 3) (sum term 0 inc n)))

 ; черновой вариант функции sum с ним все работает без term в функции sympson             
 ; (define (sum f k next n)
 ;   (if (> k n)
 ;       0
 ;       (+ (* (next k) (f (+ a (* k h))))  next = coef
 ;          (sum f (+ k 1) next n))))
 ; (* (/ h 3) (sum f 0 next n)) 

        