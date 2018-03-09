#lang racket
(require "./smallest-divisor.rkt")

(define (prime? n)
  (= n  (smallest-divisor n)))

(define (runtime)          
  (current-inexact-milliseconds)) 
(define (timed-prime-test n)
  (newline)              
  (display n)            
  (start-prime-test n (runtime))) 
(define (start-prime-test n start-time) 
  (cond ((prime? n) (report-prime (- (runtime) start-time)))))

(define (report-prime elapsed-time)
  (display " *** ")      
  (display elapsed-time))
