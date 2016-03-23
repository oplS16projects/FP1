##Part 1: Get github
If you don't have a github account, go get one. https://github.com/
This whole assignment will be done and submitted via github, and you're already here!
 
##Part 2: Try a Library
I have used (net/url) library which was used in the example code given to us for FP1

##Part 3: Write your Report

I used the same example code to start off with this assignment. It looks like the code is similar to "HTTP GET". I plan on exploring  html-parsing.plt	for my next assignment.

## My Library: (net/url)
My name: Udit Bhansali
#####Write what you did!
Although I began with the (net/url) library, I took a stab at the card games library before going back to the (net/url) library. I started by reading part of the first section of the accompanying racket documentation, then modifying the given code as per FP1 to start off with the assignment. The purpose of using this library was to get a better understanding of libraries in racket. For FP1 I've used my freelance project. I found one interesting thing, when url is an "https" nothing shows up on the screen

Screenshot
![FP1](http://i.imgur.com/vonTgcj.png?1)

Code Excerpt
```
#lang racket

(require net/url)

(define myurl (string->url "http://www.talenttechlabs.com/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```
