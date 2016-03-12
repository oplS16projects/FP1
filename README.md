# Final Project Assignment 1: Exploration (FP1)
## My Library: Plot
My name: John Perkins


So for my Final Project Exploration 1 I decided to go into the plot library of racket and mess around with some of the procedures in there. 

When I first started looking at the plot library, it was pretty standard as I started out with a normal y = x graph. I also included (plot-new-window #t) so that graphs would open up in a new window.

```racket
#lang racket
(require plot)
(plot-new-window? #t)

(plot (function (lambda (x) x)))   ;creates a basic y = x graph
```

Obviously when I loaded up the code I started to recognize some really cool features built into the library. The most immediately noticeable one was the ability to zoom in on certain parts of the graph. So from this little bit of code I’ve found out that plot works on a function which would be some sort of lambda. In addition, the function procedure itself can take many arguments such as color, line style, and labels. On the other hand the plot procedure just looks for either a function or a list of functions and also have different arguments such as a title as well as min and max values for each axis to display up to. I believe in the documentations it’s described as a renderer-tree.

After learning that bit that it takes a renderer-tree specifically and not just a function, I tried upgrading my code for the plot procedure to take in a list of functions and display them with different colors.

```racket
#lang racket
(require plot)
(plot-new-window? #t)

(plot (list (function (lambda (x) x)                ;creates a graph with 2 functions one as y = x in red
                      #:color 1
                      #:label "y = x")              ;labels first function
            (function (lambda (x) (+ (* 3 x) 5))    ;creates another function on the graph, y = 3x + 5 in green
                      #:color 2
                      #:label "y = 3x + 5"))        ;labels second function
            #:title "My Graph!"                     ;creates a title for the graph
            #:x-min -10                             ;boundaries for the graph
            #:x-max 10
            #:y-min -10
            #:y-max 10)
```

This code produces the following image (when used by plot-bitmap).

![y = x, y = 3x + 5](https://github.com/raghnall6402/FP1/blob/master/2d-bitmap-2.png)

After a bit more time I mess around with the plot-bitmap procedure which makes a nice bitmap which is displayed in the interaction window which can be just right-click and saved.
 
![2d Bitmap](https://github.com/raghnall6402/FP1/blob/master/2dbitmap.png)

I also started to do some similar stuff with plot3d which is pretty similar except that the lambda part inside of plot3d usually has 2 arguments with it instead of just one. Also you can move around the viewpoint which is pretty cool for 3d graphs. Min and max of it also extends to the z-axis. Finally to tie it all together took a quick look at the parameterize procedure that was used often which just seems to standardize the size of the window and other aspects across a large amount of plot(s) and 3dplot(s).

![3d Bitmap](https://github.com/raghnall6402/FP1/blob/master/3dbitmap.png)
