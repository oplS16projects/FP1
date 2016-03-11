## My Library: Plot: Graph Plotting
My name: Sridhar Rangan

The library which I decided to explore for my FP1 Exploration, was the Plot: Graph Plotting library.  I decided to explore this particular library since I want my final program to be related to finance, which is also my second major.  I first played around with the basics of the plot function and graphed a sin graph.

```racket
#lang racket

(require plot)

(plot (function sin (- pi) pi #:label "y = sin(x)"))

```
The code above graphs a normal sin graph.  The use of "function" automatically determines that the y-axis has the bounds of -1 to 1 inclusive [-1, 1].  The two instances of "pi" help to define the bounds of the x-axis. The label allows for the "y = sin(x)" to be put in the top left hand corner of the graph image.

![fp1-singraph](https://cloud.githubusercontent.com/assets/17771791/13692083/40a8c13e-e70c-11e5-9e02-f05732328356.jpg)

In my exploration of the graph library, I also experimented in different ways to plot graphs.  One method involved defining the points seperately and then using map to plot the graph.  Another way involved simply using plot however putting the x and y points together as coordinates.

```racket
#lang racket

(require plot)

(define x-point '(0 1 2 3 4 5))
(define y-point '(0 1 4 9 16 25))
(plot (points (map vector x-point y-point) #:color 'red))

(plot (points '(#(0 0) #(1 1) #(2 4) #(3 9) #(4 16) #(5 25)) #:color 'green))

```
The code above are just two ways to graph the same thing.  The first way, defines x-point and y-point.  In this graph, the x-point values are (0, 1, 2, 3, 4, 5) and the y-point values are all squared values of the x-point values.  Also similar to the way "label" was done before, with the graph it is also possible to specify the color and the style of the line.  In this case for both methods I used red and green to differentiate betweent the two ways.  The second method is somewhat easier as it requires one line.  Also it should be noted that the points are grouped together unlike the first method.

![fp1-xygraph](https://cloud.githubusercontent.com/assets/17771791/13692161/d3b01720-e70c-11e5-85e0-f853051c228e.jpg)

After playing with the code above, I also experimented with graphing multiple functions on one graph.  With the multiple functions I made use of the style to differentiate between the functions.  I also plotted another function with the x-axis representing years and the y-axis representing money.  I did this part to experiment with basic finance for my overall project.

