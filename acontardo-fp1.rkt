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


;Results
;'(1.618033988749895 2.718281828459045 0.5772156649015329 0.915965594177219)
;0
;3544
;0.1
;0.1
;#f
;#t
;2.2008772976898572e+019
;(array #[2 3 4 7 35])
;3628800
;220
;90
;11