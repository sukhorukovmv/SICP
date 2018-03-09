#lang racket
(require "./smallest-divisor.rkt")

(define (prime? n)
  (= n  (smallest-divisor n)))

(define (runtime)          
  (current-inexact-milliseconds))

(define (timed-prime-test n)           
  (start-prime-test n (runtime)))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")      
  (display elapsed-time))

(define (start-prime-test n start-time)
  (cond ((prime? n)
         (report-prime n  (- (runtime) start-time))
         n)
        (else (start-prime-test (+ n 1) start-time))))

(define (search-for-primes n count)
  (cond ((> count 0) (search-for-primes (+ (timed-prime-test n) 1) (- count 1)))))


