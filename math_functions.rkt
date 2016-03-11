#lang racket

(require math)

(define mymatrix (make-matrix 2 2 5))
(define test-matrix (matrix [[2 5] [3 8]]))
(matrix+ mymatrix test-matrix)
(matrix- mymatrix test-matrix)
(matrix-scale test-matrix 5)
(matrix* (matrix- test-matrix mymatrix))

(+ (random-integer 20 30) (random-integer 1 10))
(binomial 7 2)

(array+ (array #[#[8 3 5 14]]) (array 23))
(array-scale (array #[#[2 10 15]]) 30)

(count-samples '(16 16 4 4 4 25 18 18 3))

