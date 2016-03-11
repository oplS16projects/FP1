# Final Project Assignment 1: Exploration (FP1)
Josh Blanchette's FP1 report.



Please choose libraries that you think you might be interested in using in your final project.
 
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

```
#lang racket

(require net/url)

(define myurl (string->url "http://www.cs.uml.edu/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```
START


Hello.  I used an icon library, and mostly messed with stickman.  I first started off with the basics, generating an image.  I then got into more detail, like changing the size and color of the images to my liking.  The final thing I did was produce a stickman in a list to make it look like he is running.  So, I generated a big stickman, and made it look like the running stickman was running away from him.  I also added a title saying RUN STICKMAN! RUN!

The code is straightforward, where as the syntax is easy to understand.  Customizing the stickman reminded me of CSS properties we used back in GUI 1 and 2.  The imports I used in my code are copied below.

(require images/icons/style)
(require images/icons/control) 
(require images/icons/stickman)  ;this guy is my favorite 
(require images/icons/symbol)


Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.


