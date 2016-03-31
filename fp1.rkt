#lang racket

(require sugar)
(require sugar/list)

(define (round-off-procedure x y func)
  (->int (func x y)))

(define (list-length lst)
  (->int lst))

(define (sum-alt-squares-recursive n)
  (if (report(<= n 1))
      1
      (+ (* (- (* n 2) 1) (- (* n 2) 1)) (sum-alt-squares-recursive(- n 1)))))

(define (two-thirds-series-i n)
  (define (two-thirds-helper total n)
    (cond [(report(= n 0)) total]
          [(report(even? n)) (two-thirds-helper (+ total (/ 1 (expt 2 n))) (- n 1))]
          [(report(odd? n)) (two-thirds-helper (- total (/ 1 (expt 2 n))) (- n 1))]))
    (two-thirds-helper 1 n))


(define (make-fast func)
  (make-caching-proc func))

(define (compare-time func1 x)
  (time (make-fast (func1 x)))
  (time (func1 x)))

