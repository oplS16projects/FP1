
Code is super easy in markdown, which you can easily do inline `(require net/url)` or do in whole blocks:
```
#lang racket

(require net/url)

(define myurl (string->url "http://www.cs.uml.edu/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```

## My Library: (Slideshow: Figure and Presentation Tools)
My name:Ian Roberts

Write what you did!
Remember that this report must include:

While initially I was hoping to get more creative than a slideshow library, after glancing over all the cool features in this
library, it was clear that with the freedom of putting anything on a slide and the customizable  options that this would be 
a good choice. I began by playing around with the layout options. They seem tricky and will definitely need a detailed look-through, so for now I hard-coded the newline with multiple blank spaces. This of course may render differently on other computers. Alternatively I could of used two text outputs (t "foo") and prefixed the spaces.  I went to the effects from there and that is when I implemented the revealing click. 

Here is the code

'''
#lang slideshow


(slide #:title "super cool original title"
;below creates "alternating with regular to bold characters
 ( para "a"(bt "l")"t"(bt "e")"r"(bt "n")"a"(bt "t")"i"(bt "n")"g")

 ( para ; this creates alternating on two lines with italic and bold alternating lettering
   (it "  a   t   r   a   i   g                                     ") 
   ( bt"    l   e   n   t   n"))

 (t "click" );simply displays click
 
 'next  (t "c" )  'next  (t "l" );reveals the word click for each click
  'next  (t "i" )  'next  (t "c" )
 'next  (t "k" ) 

 )
 '''



The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.
  
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
