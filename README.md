# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

#Part 1: Get github
If you don't have a github account, go get one. https://github.com/
This whole assignment will be done and submitted via github, and you're already here!
 
#Part 2: Try a Library
In this exercise, you will play with at least one library provided by the Racket developers. You will have the opportunity to explore another library later.

Please choose libraries that you think you might be interested in using in your final project.

Start off at the Racket home page, http://racket-lang.org/, and then click on the Documentation link, taking you here: http://docs.racket-lang.org/.
 
There are lots of libraries. Play with one.
 
Your job is to explore one library and write up your results. Load the library and write some code to drive it around.
For example, maybe you are interested in retrieving data from the web. If we look at the net/url library, we will find functions for creating URLs, issuing HTTP GET commands, and displaying the results. Here is a little bit of code for driving around a few of the functions in this library:
```racket
#lang racket

(require net/url)

(define myurl (string->url "http://www.cs.uml.edu/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```
Notice that `(require net/url)` is all you need to put in your buffer in order to load the library and start using it.
This above is a trivial example; to complete this for the purposes of this assignment (if you go down the path of pulling HTTP requests), you should use the parsing libraries to parse the HTML, JSON, or XML that is returned.

### The following libraries are not allowed for project explorations:
* games/cards
* racket/gui
* racket/draw 

You can still use these in your project, but you must explore different libraries for this assignment.

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

## My Library:HTML-template
My name: Behailu Tekletsadik

Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!


 So the purpose of this library is to convert Racket commands into an HTML webpage.
 This is really cool because instead of hacking around aimlessly with racket with something like this:
 ```
 <html><head><title>HTML Stuff</title></head><body><h1>HTML Stuff</h1><p>Kittens claw.<br>I screamed</p></body></html>
```

now turns to this:
```
#lang racket

(require html-template)

(define (write-essay my-title)
  (html-template
   (html (head (title (% my-title)))
         (body (h1 (% my-title))
               (p "Kittens claw."
                  (br)
                  "I screamed")))))
                  


(write-essay "HTML Stuff")

```


![myimage-alt-tag](file:///home/behailu/Pictures/Screenshot%20from%202016-03-11%2015-58-19.png)
I can actually have structured function based language which makes it a lot easier to sort webpages and work with realtime modifiable webpages. It may be more code, but it's much more readable. Especially since HTML is one of those languages where its easy to get lost in, a racket format is appreciated.
From this, I can change color of text, resize, move, animate, add images and html objects of various natures to my project.
Unfortunately documentation is completely lacking. Could only find one tutorial.
 

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
