# Final Project Exploration #1 (FP1)

My Library: teachpacks/racket-turtle
My name: JT Shepple

## What I did:

I messed around with the Turtle Racket library under teachpacks. I first looked at the Racket Examples and found out how to create different shapes and designs with the lines. I also used a recursive function to keep on drawing lines and changed the variables after each iteration. Depending on what variables were changed, I could make diffrerent shapes with different colors, change the size of the line, and change the angle of the next line. 

This function takes in 4 arguements and prints out a line each time the function is recalled. x is how far the line is moved, pensize is the width of the line, a is the angle that changes on each iteration and number is how many times the function will call itself recursively. 

```racket
#lang racket

(define (spiral2 x pensize a number)
  (if (<= number 0)
      empty
      (cons (side x pensize a)
            (spiral2 (+ x 7) (+ pensize 1) a (sub1 number)))))

```


I also set a list of colors for the design and it steps through the list everytime I call the change-color function. 

```racket
#lang racket

(define colors1 (list "red" "blue" "green" "yellow" "purple" "orange"))

```



This function creates the design in the second image. I had it take in my first group of colors and for the spiral function the parameters is 1 for the change in x, 1 for the starting size of the pen, 60 for the change in degree which makes it into a hexagon, and 36 for the numbers of lines drawn. 

```racket

(define spiral-image1 (list (change-bg-color "black")
                            (change-color colors1) 
                            (spiral1 1 1 60 36)))

```


![Image 1](https://github.com/JohnShep/FP1/blob/master/Image%201.png?raw=true)
![Image 2](https://github.com/JohnShep/FP1/blob/master/Image%202.png?raw=true)
![Image 3](https://github.com/JohnShep/FP1/blob/master/Image%203.png?raw=true)

