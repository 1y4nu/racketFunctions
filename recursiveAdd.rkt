#lang htdp/bsl

; Using recursion to add and multiply two numbers.

(define (recursiveAdd num1 num2)
  (cond
    [(zero? num1) num2]
    [(zero? num2) num1]
    [else (recursiveAdd (- num1 1) (+ num2 1))]))

(check-expect (recursiveAdd 3 4) 7)
(check-expect (recursiveAdd 4 3) 7)



(define (recursiveMultiply num1 num2)
  (cond
    [(zero? num2) 0]
    [(= num2 1) num1]
    [else (recursiveAdd num1 (recursiveMultiply num1 (- num2 1)))]))

(check-expect (recursiveMultiply 0 2) 0)
(check-expect (recursiveMultiply 3 3) 9)