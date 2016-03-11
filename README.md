
## My Library: Math Library
My name: David Bui

Here, I tested out the math library and used several of the different pre-built functions. First, I made two 2x2 matrices and then performed some operations on them. Then I used functions from the basic operations part of the library and summed two randomly generated numbers. Next I did some array operations. Lastly I used a function from the statistics folder to count some samples from a list.

Here is the code:

```
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
```

My output from the .rkt file is as follows:

