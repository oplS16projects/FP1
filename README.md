# Final Project Assignment 1: Exploration (FP1)
Library: "Slideshow: Figure and Presentation Tools"
Name: Chhun Kim

Write your report right in this file. Instructions are below. Delete the instructions when you are done. Also delete all my explanation (this stuff), as I've already read it.

You are allowed to change/delete anything in this file to make it into your report. It will be public, FYI.

This file is formatted with the [**markdown** language][markdown], so take a glance at how that works.

This file IS your report for the assignment, including code and your story.

Code is super easy in markdown, which you can easily do inline `(require net/url)` or do in whole blocks:
```
#lang racket 

(require slideshow)

(slide
 #:title (bt "<***Welcome to UMass Lowell***>")
 #:layout 'tall
 #:gap-size (* gap-size 2)
 (t "Sping 2016")
 (t "COMP.3010 Organization of Programming Languages")
 (t "Final Project Exploration 1")
 (t "Slideshow: Figure and Presentation Tools")
 (t "Name: Chhun Kim")
 (t "")
 (t "<==>*<==>*<==>*<==>*<==>*<==>"))

(slide
 #:gap-size (* gap-size 2)
 (para #:align 'left
       (bit "<Content>"))
 'next
 (para #:align 'left
       "1. Creating Slides Presentation")
 'next
 (para #:align 'left
       "2. Making Slides")
 'next
 (para #:align 'left
       "3. Typesetting Racket Code in Slideshow")
 'next
 (para #:align 'left
       "4. Animations")
 'next
 (para #:align 'left
       "5. Legacy Libraries"))
```

# What I did
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
