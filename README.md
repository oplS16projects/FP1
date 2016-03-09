# Final Project Assignment 1: Exploration (FP1)

## My Library: plot (and math)

I was interested in the various types of renderers that the plot library offers, therefore I decided to test some of them out. The following are a few examples I used to test the capabilities of the plot library: 

```
#lang racket
(require plot)
(require math/base)
(require (only-in plot/utils linear-seq))	 

(define (logistic x)
  (/ 1 (+ (expt euler.0 (- x)) 1)))

(plot (function logistic (- 6) 6 #:label "y = L(x)"))
```
![Logistic Curve Output](https://github.com/olearyevan/FP1/blob/master/logistic_curve.png?raw=true)
