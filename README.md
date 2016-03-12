## My Library: Plot
My name: Jacob Suarez

  Mostly I fiddled around with the examples given in the library tutorial, first I altered the functions for sine and inverse-square to take user input instead of simply running on set numbers. Next I tried fiddling to see if you could inverse other functions the same way that you could with the sqr function. After that, I altered the appearance of the lines of the graph, as you can see here.
```
(define (sincos x)
  (plot (list (axes)
              (function sin (* x -1) x #:label "y = sin(x)" #:width 5)
              (function cos (* x -1) x #:label "y = cos(x)" #:color 2 #:style 'dot))))
              
```              

Finally, I tried rendering a 3D surface using the plot library. 
![Figure 1](https://github.com/Onamar/FP1/blob/master/figure1.JPG)
