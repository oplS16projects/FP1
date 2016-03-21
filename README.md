# Final Project Assignment 1: Exploration (FP1)

My Library: (Plot Library)
Name: Muhammed Khalid
Section: Dr. Fred G. Martin MWF 12-12:50

# What did I Do? 
I played around with the Plot library which simply plots 
a graph to the interpreter. I created a R x R --> R function 
which is a three-dimensional graph since it incorporates the 
x, y, and z axes. It looks pretty cool and now all the cool 
polar coordinate graphs we solved in Calc III can be visualized. 
By using the mouse, the graph can also be rotated. 

# Code Highlights 
```racket
#lang racket
(require plot)

(plot3d (surface3d (lambda (x y) (* (cos x) (sin y)))
                   (- pi) pi (- pi) pi)
        #:title "An R x R -> R function"
        #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)")

(plot (list (function-interval (lambda (x) (- (sin x) 3))
                               (lambda (x) (+ (sin x) 3)))
            (function-interval (lambda (x) (- (sqr x))) sqr #:color 4
                               #:line1-color 4 #:line2-color 4))
      #:x-min (- pi) #:x-max pi)
```
So I make a call to  
``` racket 
(plot3d (surface3d (lambda (x y) (* (cos x) (sin y)))
```
Which calls surface3d and creates an anonymous function to lambda which creates the product of sin(x) and cos(x)

Then I create the graph and axes titles using: 
```racket
#:title 
#:x-label
#:y-label
```
Then for fun, I found something on the Racket Documentation and implemented it. 
To do so, I call plot which creates a list which calls function-interval which in turn calls 3 anonymous functions
```racket
(plot(list (function-interval (lambda (x) (- (sin x) 3))
                              (lambda (x) (+ (sin x) 3)))
           (function-interval (lambda (x) (- (sqr x))) 
```
This will create a simple 2-D plot which will two graphs overlap and then I shade one of the graphs by using: 
```racket
#:color 4
```
The output for the project is: 

![alt tag](https://github.com/mkhalid578/FP1/blob/master/output.png)



