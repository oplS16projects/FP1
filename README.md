# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

Ryan Cauble

## My Library: pict

The first thing i needed to figure out was how to get the library working.
To do this i needed to add #lang slideshow and (require pict/balloon) like this:
```
#lang slideshow

(require pict/balloon)
```
This took a little research and reading since I did not know that the #lang had to
be changed. Once I figured this out I started reading the libraries functions and 
learned about their capabilities.

The first function I decided to play around with was the "standard-fish" function. 
This function creates a pict of a fish that can be manipulated by changing certain
parameters. 
```
(define fishy2
     (standard-fish	100        ;; width	 	 	 	 
 	 	        50	                ;; height	 	 	 
 	 	#:direction 'right  	 	 	 	 
 	 	#:color "blue"	 	 	 	 
 	 	#:eye-color "red"	 	 	 	 
 	 	#:open-mouth #t)  ;; #t, #f, or between 0 and 1
)
```
The open mouth parameter can be a value between 0 (closed) and 1 (open). 
Values between 0 and 1 will make the mouth open between those extremes.


![screen1](https://cloud.githubusercontent.com/assets/17748575/13704660/ffe0dc9a-e76a-11e5-93f7-fadcea4292be.png)






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
