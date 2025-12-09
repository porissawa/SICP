#lang sicp

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sqr-and-sum-two-largest x y z)
  (cond ((and (> x y) (> x z))
         (sum-of-squares x (if (> y z) y z))
         )
        (else (sum-of-squares y z))
  )
)

(sqr-and-sum-two-largest 4 2 3)