# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: (library name here)
My name: Plot

What I did:
 I started figuring out how to use Plot by using the documentation on the racket website.
 I looked at the first 3-4 sections of the documentation and made a few examples based on
 what I learned about it.

Highlights:
 1. One kind of 'highlight' is how I made some of the graphs using lists. When I put "list" before "plot", I created
    several different frames of graphs. When you run my program, 4 seperate windows pop up. Putting "list" here was 
    the basis for creating graphs that were unrelated to each other on seperate windows to avoid confusion. If I had 
    the "Trig Functions" graph in the same window as the "Powers of x", it would be hard to read  and not look as neat. 
    Below is a snippet describing what I mean by putting "list" before "plot". 
    ```
    (list
    (plot (list ...)))
    ```
    
 2. Another highlight I would like to draw attention to is this line of my code of the "Powers of x" window:
 3. 
    `(function (lambda (x) (* x x x x)) -4.9 4.9 #:color 0 #:style 'dot #:label "y = x^2")`

    The parameters #:color, #:style, and #:label are a weird type of object. There are a handful of different 
    parameters of this type in the Plot library. They are used as style modifiers, axes/curve labels, and window titles.
    Also, the generic format for the "plot" procedure can take renderable objects, or a list of renderable objects.
    As opposed to the code highlight 1, I also put several different curves on one graph. I did this by making a list of the
    objects to be rendered after the "plot" procedure.

 3. I played around with some of Plot's 3d rendering, despite the resistance of my quite underperforming and old laptop.
    The "3d functions 1" and "3d functions 2" are the examples I created. "3d functions 1" is a simple 3d cosine wave,
    while "3d functions 2" is 2x 3d objects rendered together in a strange way.

Output/Photos:

![Powers of x output](https://github.com/kjolicoeur/FP1/blob/master/Powers%20of%20x.png?raw=true)
![Trig Functions output](https://github.com/kjolicoeur/FP1/blob/master/Trig%20Functions.png?raw=true)
![3d functions 1 output](https://github.com/kjolicoeur/FP1/blob/master/3d%20functions%201.png?raw=true)
![3d functions 2 output](https://github.com/kjolicoeur/FP1/blob/master/3d%20functions%202.png?raw=true)
