#lang htdp/bsl

; A function that returns the middle number in a set of 3 numbers

(define (middle-of-three a b c)
  (cond
    [(and (<= a b) (<= b c)) b]
    [(and (<= c b) (<= b a)) b]
    [(and (<= b a) (<= a c)) a]
    [(and (<= c a) (<= a b)) a]
    [(and (<= a c) (<= c b)) c]
    [(and (<= b c) (<= c a)) c]))

(middle-of-three 1 3 2)