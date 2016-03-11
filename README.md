
## My Library: Math Library
My name: David Bui

Here, I tested out the math library and used several of the different pre-built functions. First, I made two 2x2 matrices and then performed some operations on them. Then I used functions from the basic operations part of the library and summed two randomly generated numbers. Next I did some array operations. Lastly I used a function from the statistics folder to count some samples from a list.

Here is the code with explanations:

```
(require math)

;; Make two 2x2 matrices
(define mymatrix (make-matrix 2 2 5))
(define test-matrix (matrix [[2 5] [3 8]]))
;; Add them
(matrix+ mymatrix test-matrix)
;; Subtract them
(matrix- mymatrix test-matrix)
;; Multiply all the values in the second matrix by a factor of 5
(matrix-scale test-matrix 5)
;; Multiply the difference of the second matrix by the first
(matrix* (matrix- test-matrix mymatrix))

;; Add two randomly generated numbers between two different ranges
(+ (random-integer 20 30) (random-integer 1 10))
;; Get the binomial of 7 and 2, 
(binomial 7 2)

;; Add the elements of a constructed array by the value 23
(array+ (array #[#[8 3 5 14]]) (array 23))
;; Add 30 to all the elements of a constructed array
(array-scale (array #[#[2 10 15]]) 30)

;; Get the list of samples in a list and count how many of each sample exist
(count-samples '(16 16 4 4 4 25 18 18 3))
```

My output from the .rkt file is as follows:

![alt tag](https://github.com/buidavid16/FP1/blob/master/img/math_functions_output.png|alt=octocat])

Here is the diagram of what is going on in my code:

