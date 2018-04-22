#lang racket

(define (square x) 
      (* x x))
(define (sumOfSquares x y)
      (+ (square x) (square y)))
(define (sumOfTwoHigherSquares x y z)
      (cond ((and (<= x y) (<= x z)) (sumOfSquares y z))
           ((and (<= y x) (<= y z)) (sumOfSquares x z))
           (else (sumOfSquares x y))))

(display (sumOfTwoHigherSquares 0 2 0))

          