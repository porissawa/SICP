#lang sicp

#|
A function f is defined by the rule that f(n) = n if n < 3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.
Write as recursive and iterative
|#

(define (f-rec n)
    (if (< n 3)
        n
        (+ (f-rec (- n 1))
           (* 2 (f-rec (- n 2)))
           (* 3 (f-rec (- n 3)))))
)

(f-rec 4)

(define (f-iter n)
    (define (iter n-1 n-2 n-3 num)
        (if (= n num)
            n-1
            (iter (+ n-1 (* 2 n-2) (* 3 n-3))
                n-1
                n-2
                (+ 1 num))))

    (if (< n 3)
        n
        (iter 2 1 0 2))
)

(f-iter 4)