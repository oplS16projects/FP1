
# Write your Report
Write your report right in this file. Instructions are below. Delete the instructions when you are done. Also delete all my explanation (this stuff), as I've already read it.

You are allowed to change/delete anything in this file to make it into your report. It will be public, FYI.

This file is formatted with the [**markdown** language][markdown], so take a glance at how that works.

This file IS your report for the assignment, including code and your story.

Code is super easy in markdown, which you can easily do inline `(require net/url)` or do in whole blocks:
```
#lang racket

(require net/url)

(define myurl (string->url "http://www.cs.uml.edu/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```

## My Library: Plot
My name: Wesley Nuzzo

Racket's plot library is pretty obvious as to its purpose: plot things!
It can support a whole bunch of interesting kinds of graphs, including scatter plots and bar graphs, but I'm mostly interested in the more function-based (in the mathematical sense) aspects of its capabilities.

The very first thing to do with the library is to simply test that it works.
For 2d plots, I'll start by testing the ability to plot two functions at the same time. I'll choose the sine and cosine functions because they're related, and I'll make them different colors so that we can tell them apart.
For 3d plots, I'll just use the same plot used in the documentation. I'll go with the contours3d graph because that one looks slightly cooler.

I define the renderers like this:
```
;; 2D
(define sine (function sin (- pi) pi
                       #:label "y = sin(x)"))
(define cosine (function cos (- pi) pi
                         #:label "y = cos(x)" #:color 2))
;; 3D
(define 3d-surface
  (contour-intervals3d (λ (x y) (* (cos x) (sin y)))
                       (- pi) pi (- pi) pi))
```

To display them I then call this function:
```
;; plot and display
(define (display-basic-plots)
  (display (list (plot (list sine cosine)
                       #:title "Two functions on the same graph.")
                 (plot3d 3d-surface
                         #:title "An R × R → R function"
                         #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)"))))
```
Both graphs can be interacted with: the 3d graph can be rotated and the 2d graph can be zoomed in and out.

Now to play around a bit.
The library has a whole collection of "renderers" that can be passed to the plot or plot3d function to display them. I'm going to experiment with creating simple geometric shapes using these renderers.

## 2 dimensions

The simplest renderer is called (function), and it simply plots the values of a single-argument function using cartesian coordinates.

Here's some circles I made using this function.
```
;; circle
(define (circle radius)
  ;; One upper semicircle and one lower semicircle
  (list (function (λ (x) (sqrt (- radius (* x x))))
                  (- radius) radius
                  #:label "circle top")
        (function (λ (x) (- (sqrt (- radius (* x x)))))
                  #:label "circle bottom" #:color 2)))
;; filled
(define (filled-circle radius)
  ;; simply the interval between the two semicircles
  (function-interval (λ (x) (sqrt (- radius (* x x))))
                     (λ (x) (- (sqrt (- radius (* x x)))))
                     -1 1))
```
The top and bottom half of the first circle are different colors in order to demonstrate the fact that they are plotted using different lines.

Here's a square made using a similar approach. (The library has a rectangle function for bar graphs, but that won't give me a rotated square.)
```
(define (rotated-square side-length)
  ;; divide by (sqrt 2) for x-min and x-max
  ;; because of the pythagorean theorem / 45-45-90 triangles
  (let ((x-min (- (* side-length (sqrt 2))))
        (x-max (* side-length (sqrt 2))))
    ;; use absolute value function to get v-shape
    ;; we need one pointing up and one pointing down
    (list (function (λ (x) (- x-max (abs x))) 
                    x-min x-max)
          (function (λ (x) (- (abs x) x-max))
                    x-min x-max #:color 2))))
```

There's also a renderer called (polar), which uses polar coordinates.
It's very easy to make a circle using this, but filling it in requires a bit of a trick:
```
(define (filled-polar-circle radius)
  ;; fill from the center of the circle, but make that "line" transparent
  ;; so there's no dot in the center of the circle
  (polar-interval (λ (θ) radius)
                  (λ (θ) 0)
                  #:line2-style 'transparent))
```
Self-explanatory.

We can also make a square:
```
(define (rotated-polar-square side-length)
  ;; |x|+|y|=1, ergo
  ;; |r*cos|+|r*sin|=1, ergo
  ;; r=1/(|cos|+|sin|)
  (polar (λ (θ) (/ side-length (+ (abs (cos θ)) (abs (sin θ)))))))
```

Finally, a renderer called (parametric). This involves generating x and y coordinates based on a third variable, called t. Creating a square using this function required me to create a new function, analogous to the sin and cos functions (which can be used by (parametric) to make a circle).

One more thing for two dimensions: I want to play with the lines function (and linear-seq).
First, a very slightly modified version of the example in the documentation:
```
;;; This function returns a shape that approximates a parabola.
;;; The higher n is, the more closely it approximates the correct shape.
(define (parabola1 n)
  (define xs (linear-seq -1 1 n))
  (lines (map vector xs (map sqr xs))))
```
After playing with this for a while, I came up with this:
```
;; This extends the previous function to go beyond -1 to 1 on x axis
;; note a few key differences
(define (parabola2 n)
  (define inner-xs (linear-seq -1 1 (- (expt 2 n) 1)))
  (define outer-xs (map (λ (x) (/ x))
                       (filter (λ (x) (not (or (= x 0) (= x 1))))
                               inner-xs)))
  (define xs (sort (append inner-xs outer-xs)
                   <))
  (lines (map vector xs (map sqr xs))))
```

## 3 dimensions

Spheres:
```
(define sphere-polar (polar3d (λ (θ ρ) 1)))
(define isosphere (isosurface3d
                   (λ (x y z) (sqrt (+ (sqr x) (sqr y) (sqr z)))) 1
                   -1 1 -1 1 -1 1))
```
The double-cone:
```
(define double-cone (isosurface3d
                     (λ (x y z) (- (sqr z) (sqr x) (sqr y))) 0
                     -1 1 -1 1 -1 1))
```
An octahedron:
```
(define octahedron (isosurface3d
                    (λ (x y z) (+ (abs x) (abs y) (abs z))) 1
                    -1 1 -1 1 -1 1))
```

## Miscelleneous
Not yet

<!--

Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

Ask questions publicly in the email group.
-->

## How to Prepare and Submit this assignment

1. To start, [**fork** this repository][forking]. 
  2. (This assignment is just one README.md file, so you can edit it right in github)
1. Modify the README.md file and [**commit**][ref-commit] changes to complete your report.
1. Add your racket file to the repository. 
1. Ensure your changes (report in md file, and added rkt file) are committed to your forked repository.
1. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.

## Project Schedule
This is the first part of a larger project. The final project schedule is [here][schedule]

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
