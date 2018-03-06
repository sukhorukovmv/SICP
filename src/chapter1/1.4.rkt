#lang racket
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;Здесь происходит сложение a c b взятым по модулю
