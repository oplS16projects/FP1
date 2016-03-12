# Final Project Assignment 1: Exploration (FP1)
## My Library: Plot
My name: John Perkins


	So for my Final Project Exploration 1 I decided to go into the plot library of racket and mess around with some 
of the procedures inthere. I was deciding between this library and I some logo generation library that I forget the name 
of already. I ended up with this one as it just seemed more immediately useful and also easier to understand than the 
other one and it turned out to be pretty cool. 
	
	When I first started looking at the plot library, it was pretty standard as I started out with a normal y = x graph.

```racket
#lang racket
(require plot)

(plot (function (lambda (x) x)))
```

	Obviously when I loaded up the code I started to recognize some really cool features built into the library. The 
most immediately noticeable one was the ability to zoom in on certain parts of the graph. So from this little bit of code 
I’ve found out that plot works on a function which would be some sort of lambda. In addition, the function procedure itself 
can take many arguments such as color, line style, and labels. On the other hand the plot procedure just looks for either a 
function or a list of functions and also have different arguments such as a title as well as min and max values for each axis 
to display up to. I believe in the documentations it’s described as a renderer-tree.

	After learning that bit that it takes a renderer-tree specifically and not just a function, I tried upgrading my code 
for the plot procedure to take in a list of functions and display them with different colors.

```racket
#lang racket
(require plot)

(plot (list (function (lambda (x) x)
                      #:color 1
                      #:label "y = x")
            (function (lambda (x) (+ (* 3 x) 5))
                      #:color 2
                      #:label "y = 3x + 5"))
            #:title "My Graph!"
            #:x-min -10
            #:x-max 10
            #:y-min -10
            #:y-max 10)
```

	After a bit more time I mess around with the plot-bitmap procedure which makes a nice bitmap which is displayed in 
the interaction window which can be just right-click and saved.
 
![2d Bitmap](https://github.com/raghnall6402/FP1/blob/master/2dbitmap.png)
![3d Bitmap](https://github.com/raghnall6402/FP1/blob/master/3dbitmap.png)

	I also started to do some similar stuff with plot3d which is pretty similar except that the lambda part inside of 
plot3d usually has 2 arguments with it instead of just one. Also you can move around the viewpoint which is pretty cool for 
3d graphs. Min and max of it also extends to the z-axis. Finally to tie it all together took a quick look at the parameterize
procedure that was used often which just seems to standardize the size of the window and other aspects across a large amount 
of plot(s) and 3dplot(s).


```racket
#lang racket

(require net/url)

(define myurl (string->url "http://www.cs.uml.edu/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```
Notice that `(require net/url)` is all you need to put in your buffer in order to load the library and start using it.
This above is a trivial example; to complete this for the purposes of this assignment (if you go down the path of pulling HTTP requests), you should use the parsing libraries to parse the HTML, JSON, or XML that is returned.

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

## My Library: (library name here)
My name:

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
