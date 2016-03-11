# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: pict
Cody Mulkern

The first thing I did was try some examples from the documentation for the library. After I found the thermometer function it gave me the idea to make a list of the temperatures for the week. Before I could do that though I had to figure out how all the parts of the fucntion worked. Some parts could use decimals and some required fractions but all of them could use fractions so I made a supplimental procedure to return temperatures as a fraction. After that I made some procedures to make a day and them one that puts days together to create a list for a week.

This was all that was needed to get the library to work.
```racket
#lang racket
(require pict)

```

The first test code I did was this. This is when I found out that height and color needed to be numbers between 0 and 1 but oddly enough heigh can take decimal and fractions where color can only do fractions. This is why my getTemp fucntion just returns a fraction always.
```racket

(define monday (thermometer #:height-% 0.8
               #:stem-height 180
               #:color-% 1
               #:ticks 20
               #:bottom-circle-diameter 40
               #:top-circle-diameter 20
               #:mercury-inset 4))

```
![alt](https://github.com/Mulks/FP1/blob/master/pict-test-1.PNG)

From there I went ahead with my idea and made a day procedure and a week procedure.
Now I was able to just simply call ```racket (define week (makeWeek)) ``` and then type week into the REPL and get desired results.
```racket

(define (getTemp temp)
  (/ temp 100)
)

(define (makeDay day temp)
  (cons day (cons (thermometer #:height-% (getTemp temp)
               #:stem-height 150
               #:color-% (getTemp temp)
               #:ticks 20
               #:bottom-circle-diameter 40
               #:top-circle-diameter 20
               #:mercury-inset 4) '()))
)

(define (makeWeek)
  (list sunday monday tuesday wednesday thursday friday saturday)
)

(define sunday (makeDay "Sunday" 80))
(define monday (makeDay "Monday" 65))
(define tuesday (makeDay "Tuesday" 70))
(define wednesday (makeDay "Wednesday" 55))
(define thursday (makeDay "Thursday" 30))
(define friday (makeDay "Friday" 60))
(define saturday (makeDay "Saturday" 90))

```
Now calling ```(define week (makeWeek)) ``` and then ```week``` produces:
![alt](https://raw.githubusercontent.com/Mulks/FP1/master/pict-test-2.PNG)
