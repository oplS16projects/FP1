# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

#Part 1: Get github
If you don't have a github account, go get one. https://github.com/
This whole assignment will be done and submitted via github, and you're already here!
 
#Part 2: Try a Library
I have used (net/url) library which was used in the example code given to us for FP1

#Part 3: Write your Report

I used the same example code to start off with this assignment. It looks like the code is similar to "HTTP GET". I plan on exploring  html-parsing.plt	for my next assignment.
```
#lang racket

(require net/url)

(define myurl (string->url "http://www.talenttechlabs.com/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```

## My Library: (net/url)
My name: Udit Bhansali
Write what you did!
Although I began with the (net/url) library, I took a stab at the card games library before going back to the (net/url) library. I started by reading part of the first section of the accompanying racket documentation, then modifying the given code as per FP 1 to start off with the assignment. The purpose of using this library was to get a better understanding of libraries in racket. For FP1 I've my freelance project. I found one interesting thing, when url is an "https" nothing shows up on the screen.

Screenshot
![FP1](http://i.imgur.com/vonTgcj.png?1)

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
