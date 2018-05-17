#lang racket
(require "./1.21.rkt");smallest-divisor v1.0

(define (prime? n)
  (= n  (smallest-divisor n)))

(define (runtime)          
  (current-inexact-milliseconds))

;(define (timed-prime-test n)           
;  (start-prime-test n (runtime)))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")      
  (display elapsed-time))

(define (start-prime-test n start-time)
  (cond ((prime? n)(report-prime n  (- (runtime) start-time))
         n)
        (else (start-prime-test (+ n 1) start-time))))

(define (search-for-primes n count)
  (cond ((> count 0) (search-for-primes (+ (start-prime-test n (runtime)) 1) (- count 1)))))


