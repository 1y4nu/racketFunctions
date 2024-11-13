#lang htdp/bsl

(define (listSum lst)
  (cond
    [(empty? lst) 0]
    [else (+ (first lst) (listSum (rest lst)))]))

(check-expect(listSum (list 2 3 4 5)) 14)