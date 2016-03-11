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

## My Library: HTML: Parsing Library
My name: John Adams

Narrative:
 Exploring the HTML Parsing Library, (after a misunderstanding- I believed a line of code to be user-entered in the console, when it was really part of the coding within DrRacket) I've been able to create two HTML 'strings' of four and three segments, or parts: a 'head' and at least two 'body' pieces.
 
 I was then able to have both HTML strings print to the console- 
 ```
 #lang racket
 
 (require html)
 
 (module html-test1 racket
 ...)
 
 (module html-test2 racket
 ...)
 
(require 'html-test1)
(require 'html-test2)
```
The two (require 'html-test)'s I had originally believed to be entered into the console, when they were part of the code itself. I finally found out I was incorrect, and the two printed to the screen properly.


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
