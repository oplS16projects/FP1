# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: (math)
My name: Adam Contardo

 The library I decided to explore was the math library, which includes 9 packages.  This library adds a few things including common mathematical constants and has a lot of support for the use of floats (flonums).  Other features include procedures to generate random numbers. The math/special-functions library introduces a few special non-elementary procedures, which has support for real numbers 
and flonums. A few examples are gamma, log-gamma, psi0, but there are many more and all return flonums. A few more of the packages are: bigfloat, number-theory, array, matrix, distributions, and statistics.  Bigfloat provides arbitrary-precision float functions, and number theory provides a variety of procedures working with roots, primes, powers, combinatorics, number sequences, and much more.  The array package provides functioning array data structures, although there is a performance warning for untyped racket. The statistics package takes sets of values and computes summaries, and provides procedures  for using sequences with weighted samples as well as unweighted.  There are a lot of helpful procedures here to work with large numbers, sequences of numbers, and doing calculations on number sets. The code below is just a small example using some of the procedures that math provides. Math/number-theory may be useful for the project.


```racket
#lang racket
(require math)

(define list-of-constants (list phi.0
                                euler.0
                                gamma.0
                                catalan.0))

list-of-constants                           

;Some procedures in math/base

;Random number generation
;Both take integers; both takes a specified range
(random-integer 0 10) 
(random-natural 4234)

;Procedures from math/flonum
(fl 1/10)
;>0.1
(fl 0000000.10)
;>0.1

(flodd? (fl 1/10))
(fleven? (fl 2.0000))
(flsinh 45.23112)

;You can use math/bigfloat to handle flonum precision

;math/code
(array #[2 3 4 7 35])

;math/number-theory
(factorial 10)
(binomial 12 3)
(permutations 10 2)
(partitions 6)
```

![mathimg](https://cloud.githubusercontent.com/assets/17789863/13977355/9910cc04-f09e-11e5-83af-7783b6f98fc0.png)
