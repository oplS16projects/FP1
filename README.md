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
*Note: The math library is included to use Euler's number for the logistic curve and the linear sequence library is included to help with the histogram.*

First I tried to render a one input real valued function using plot which takes a function, range, and a label, which displays in the top right of the plot. I decided to plot a standard logistic cuve, the results are as follows: 

![Logistic Curve Output](https://github.com/olearyevan/FP1/blob/master/logistic_curve.png?raw=true)

Next, I extended the previous example by displaying the area under the curve by using a histogram, in this case this requires two renderers to be passed to plot.

```
(plot (list (area-histogram logistic (linear-seq (- 6) 6 12) #:color 8 #:line-color 8)
            (function logistic (- 6) 6 #:label "Area under y = L(x)")))
```
Which yields the following plot:

![Area Under Logistic Output](https://github.com/olearyevan/FP1/blob/master/area_under_logistic.png?raw=true)

The histogram renderer could be valuable across a variety of areas if I were to create a program to display mathematical functions I could use the histogram function as an approximation for Riemann sums or in the case of a program to display and manipulate audio the histogram could be used as a real-time visual for the audio statistics, such as sound frequency.

I wanted to further see how I could implement more than one renderer, so I tried to display more than two renderers on the same graph, I decided to display multiple sine waves, each at a different frequency, on the same plot.

````
(plot (list (axes)
            (function (lambda (x) (sin x)) 0 (* 2 pi) #:color "light blue" #:width 2.4 #:label "y = sin(x)")
            (function (lambda (x) (sin (* 2 x))) 0 (* 2 pi) #:color "lightgreen" #:width 2.2 #:label "y = sin(2x)")
            (function (lambda (x) (sin (* 3 x))) 0 (* 2 pi) #:color "orange" #:width 2.0 #:label "y = sin(3x)")))
````

Which yields the folllowing plot:

![Multiple Sine Waves Output](https://github.com/olearyevan/FP1/blob/master/multiple_function_plot.png?raw=true)

Before trying out the 3-dimensional capabilities of the plot library, I decided to plot a parametric function known as a Lissajous curve, the results are as follows:

```
(plot (parametric (lambda (t) (vector (sin (* 8 t)) (cos (* 6 t)))) 0 (* 2 pi)))
```

![Parametric Curve Output](https://github.com/olearyevan/FP1/blob/master/parametric_plot.png?raw=true)

Finally, I wanted to test surface renderer, I decided to plot an arbitrary sine function, with the knowledge that sine functions often make interesting 3-dimensional graphs, the results are as follows:

```
(plot3d (surface3d (lambda (x y) (sin (+ (/ (* x x) 2)
                                         (/ (* y y) 2))))
                   -3 3 -3 3))
```

![3-Dimensional Sine Wave Output](https://github.com/olearyevan/FP1/blob/master/3d_plot.png?raw=true)
