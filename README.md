
## My Library: (Plot Library)
My name: Naman Jiandani

# Write What you Did 
* So I played around with plot library. It was easy and I found 
* it very interesting 
* I first declared the library 
```racket 
(require plot) 
```
Then I called: 
```racket 
(parameterize ([plot-title  "An R × R → R function"]
```
This will call parameterize which takes a title and x, y values. And that is what the rest of code does 

```racket 
  [plot-x-label "x"]
                 [plot-y-label "y"]
                 [plot-z-label "cos(x) sin(y)"])
    (plot3d (contour-intervals3d (λ (x y) (* (cos x) (sin y)))
                                 (- pi) pi (- pi) pi)))
 ```
 It plots x, y, and z values. Then the area is shaded to illustrate parameterization. 
 
 The Output is below 
 
 ![alt tag](https://github.com/naman1255/FP1/blob/master/my_output.png)
 
 
