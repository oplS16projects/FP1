## My Library: plot
My name: Willis Hand

I really wanted to do something that had a visual component, and being inspired by the other students work we were shown in class I decided to explore the plotting library. This library has several components, but the parts that I really focused on were the 2D and 3D plotting procedures. It also has support for saving plots as image files, which is really cool!

I started with the sample code from the racket website.
Source: https://docs.racket-lang.org/plot/intro.html
```
(plot (function sin (- pi) pi #:label "y = sin(x)"))
```
Using this, I made a simple system to save my own simple "plottable" objects accompanied by my-plot, a function to interpret my objects and feed the arguments into plot. The thing that really caught my eye however was the ability to graph 3D surfaces.
Source: https://docs.racket-lang.org/plot/intro.html
```
(plot3d (surface3d (λ (x y) (* (cos x) (sin y)))
                     (- pi) pi (- pi) pi)
          #:title "An R × R → R function"
          #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)")
```
All of the plot functions need very similar arguments, so I modified my wrapper system to be able to deal with both 2d and 3d plottable objects.
```
(define minx (- 10))
(define maxx 10)

(define (make-plottable type name func) (list type name func))
(define (my-plot plottable) (if (string=? (car plottable) "2d")
                                (plot (function (caddr plottable) minx maxx #:label (cadr plottable)))
                                (plot3d (surface3d (caddr plottable) minx maxx minx maxx) #:z-label (cadr plottable))))
```
Although not able to completely take advantage of all of the functionality of plot, it allows me to quickly make plottable objects that I can pass around or save or whatever else I may need to do. To illustrate the ease with which I can now use the system:
```
(define sample3 (make-plottable "2d" "y=x^3" (lambda (x) (* x x x))))
(define sample4 (make-plottable "3d" "z=(x^3)-(y^2)" (lambda (x y) (- (* x x x) (* y y)))))
```
```
(my-plot sample3)
(my-plot sample4)
```
![alt tag](https://raw.githubusercontent.com/whand662/FP1/sample3-2D.png)
![alt tag](https://raw.githubusercontent.com/whand662/FP1/sample4-3D.png)
