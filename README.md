# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016


#Part 3: Write your Report
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

## My Library: Plot: Graph Plotting
My name: Sridhar Rangan

The library which I decided to explore for my FP1 Exploration, was the Plot: Graph Plotting library.  I decided to explore this particular library since I want my final program to be related to finance, which is also my second major.  I first played around with the basics of the plot function and graphed a sin graph.

```racket
#lang racket

(require plot)

(plot (function sin (- pi) pi #:label "y = sin(x)"))

```
The following code above graphs a normal sin graph.  The use of "function" automatically determines that the y-axis has the bounds of -1 to 1 inclusive [-1, 1].  The two instances of "pi" help to define the bounds of the x-axis. The label allows for the "y = sin(x)" to be put in the top left hand corner of the graph image.

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

After playing with the code above, I also experimented with graphing multiple functions on one graph.  With the multiple functions I made use of the style to differentiate between the functions.  I also plotted another function with the x-axis representing years and the y-axis representing money.  I did this part to experiment with basic finance for my overall project.

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

Ask questions publicly in the email group.

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
