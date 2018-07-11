#lang racket/base

(define (cont-frac-iterative n d k) ;итеративный процесс
  (define (iter acc k)
    (if (= k 1)
        (/ (n k) acc)
        (iter (+ (d (- k 1)) (/ (n k) acc))
              (- k 1))))
  (iter (d k) k))

(define (cont-frac-recursive n d k) ;рекурсивный процесс 
  (define (iter i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1))  


(/ 1 (cont-frac-iterative (lambda (i) 1.0) (lambda (i) 1.0) 1000)) 
(/ 1 (cont-frac-recursive (lambda (i) 1.0) (lambda (i) 1.0) 1000))