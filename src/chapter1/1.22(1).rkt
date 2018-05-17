#lang racket/base
(require "./1.21.rkt");smallest-divisor v1.0

(define (prime? n)
  (= n  (smallest-divisor n)))
(define (runtime)          
  (current-inexact-milliseconds))
(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (runtime) start-time))
      #f))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n count)
  (cond ((> count 0)
        (if (timed-prime-test n)
            (search-for-primes (+ n 1) (- count 1))
            (search-for-primes (+ n 1) count)))))
      
