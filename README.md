
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
The 3d graph can be rotated:
The 2d graph can be zoomed in on, but that looks slightly less interesting.

Now to play around a bit.

First, circles.

Okay, now squares, using a similar approach. (The library has a rectangle function for bar graphs, but those are filled rectangles, and it won't give me the rotated square.)

One more thing for two dimensions: I want to play with the lines function (and linear-seq).
First, a very slightly modified version of the example in the documentation:
After playing with this for a while, I came up with this:

Now into three dimensions!

Spheres:
Cubes:

Done!

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
