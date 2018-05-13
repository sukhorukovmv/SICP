#lang racket/base
;Рекурсивный процесс
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (f (- n 2))
         (f (- n 3)))))

;Итеративный процесс
(define (f-iter n)
    (define (iter a b c count)
        (if (= count 0)
        c
        (iter (+ a b c) a b (- count 1))))
  (iter 2 1 0 n))

(provide f f-iter)