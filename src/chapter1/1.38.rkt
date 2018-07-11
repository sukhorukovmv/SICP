#lang racket/base
(define (cont-frac n d k) ;итеративный процесс
  (define (iter acc k)
    (if (= k 1)
        (/ (n k) acc)
        (iter (+ (d (- k 1)) (/ (n k) acc))
              (- k 1))))
  (iter (d k) k))

(define (d n) 
  (define (iter n k)
  (cond ((= k 2) (* (/ (+ n 1) 3) 2))
        ((< k 2) 1)
        (else (iter n (- k 3)))))
  (iter n n))

(define (e k)
  (+ 2 (cont-frac (lambda (i) 1.0)
             d
             k)))