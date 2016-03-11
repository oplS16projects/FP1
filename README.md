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

## My Library: (net/url) 
My name: John Brown
* Yes I know I used the example one, I'm totally uncreative, whatever, it interested me.

I broke my code largely into two sections. My goal was to learn how to interact with an SQL server the most secure way possible. (when uploading my project to a oublic repository)(hence no using the Database library as I would have to post passwords)
The first section is the aforementioned accessing the database (ultimately using PHP queries) and the second section is accessing a raw HTML file and parsing it using handwritten codes.

## Section 1: Using post-pure-port
I reiterate this numerous times throughout the comments in my code, but this was seriously annoying to get to work.
post-pure-port allows you to use _POST http/php commands, and retrieve an echo'd value.

```
(define base "http://jdbjohnbrown.net/gameSync.php")
(define my-site (string->url base))
(define Header (list "Content-Type: application/x-www-form-urlencoded"))
(define target-post (string->bytes/utf-8 (format "f=tgn&id=1")))

(define (get-player-string x)
  (define in
  (post-pure-port my-site (string->bytes/utf-8 (format (string-append "f=tgn&id=" (number->string x)))) Header) )
  (begin0
  (port->string in)
  (close-input-port in)))
```
  
Here I set up numerous variables to make future succesive calls easier.
Finally I use what we're all here for and that's post-pure-port. 
This calls parameters take the url in string->url form, which I pass in the website.
Next it takes arguements for the _POST call, which have to be very specifically formated.


This outputs a string which is then parsed into an object (firstname lastname (number position) (goals assists points))
Lastly, I use this object and several selectors in the code to display the information in a easy to ready way:
![alt tag](https://github.com/JDBJohnBrown/FP1/blob/master/sample-output1.png)
  
