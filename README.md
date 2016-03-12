# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016
My Library: (require net/url) with regular expressions
My name: Connor McLaughlin
 
Part 3:

I did my report on (require net/url) and regular expressions (imported from racket) to try and collect data from a website. The website I used was the stats page for the bruins. I ran into some trouble when using the regular expressions on the (get-pure-port) object. It seems that the regex-match modifies the pure-port object with the result from the call. This means that after I get the first stat number I search for I cannot get the second because it has been cropped out of the string. To get around this I saved the information with from the website as a string so I could make multiple calls to the stats. The problem is that this changed my regular expressions because the port->string function formats differently than my-port. To solve this issue I coppied the code from my-port into a string. If I plan on doing more with this I would have to change the regular expressions to match it directly from the source code.


Here is a more in-depth illistration of my problem:
```
#lang racket

(define myurl (string->url "http://bruins.nhl.com/club/stats.htm"))
(define myport (get-pure-port myurl))

(regexp-match #rx"[0-9][0-9]" (car (regexp-match* #rx"P. Bergeron.*\"gp\">..<" myport)))
```
This first code would result in a list containing Bergeron's games played '(#68)

The issue is when you try to do two regexps on my port:

```
#lang racket

(define myurl (string->url "http://bruins.nhl.com/club/stats.htm"))
(define myport (get-pure-port myurl))

(regexp-match #rx"[0-9][0-9]" (car (regexp-match* #rx"P. Bergeron.*\"gp\">..<" myport)))
(regexp-match* #rx"P. Bergeron.*\"gp\">..<" myport)
```
This would output 
'(#68)
'()

What is happening is the port is being modified by the first regexp-match call so it cant be match again.

After solving this issue I made a function that generates a list of stats for the bruins player Patrice Bergeron

```
(list "P. Bergeron"
      (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match* #rx"P. Bergeron.*\"gp\">..<" myport))))
      (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match #rx"goals\">..<" 
                                                 (car (regexp-match #rx"P. Bergeron.*\"goals\">..<" teststring))))))
      (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match #rx"assts\">..<" 
                                                 (car (regexp-match #rx"P. Bergeron.*\"assts\">..<" teststring))))))
       (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match #rx"plusminus\">..<" 
                                                 (car (regexp-match #rx"P. Bergeron.*\"plusminus\">..<" teststring)))))))
```
The first regex narrows it down to P.Bergeron (random code) "goals"<68> and the second regexp just gets the 68 this ouputs
'("P. Bergeron" #"67" "28" "33" "14")

![output](FP1/output.png)


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
