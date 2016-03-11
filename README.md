

## My Library: Traditional Turtles
My name: Jeremy Daigneau

For this exploration, I tried using the Traditional Turtles library. I quickly realized that this is a rather basic graphical library. It was still fun to use with racket though. I began by initializing a turtle. Each "turtle" is represented by a color triangle drawn to the display. Next, I implemented the "draw" function which moves the turtle a designated number of pixels in the direction it is facing and leaves a line as a trail. Next, I used the "split" function which splits the current turtle into two. I then used a combonation of "draw" functions and "turn" and "erase" functions which turns the turtle and moves the turtle and erases the line behind it, respectively. I also used a function from the "/turtles-examples" called "neato" that drew spirals onto the display. 

#lang racket

(require graphics/turtles)
(turtles #t)

(draw 100)
(split (turn/radians (/ pi 2)))
(turn 90)
(draw 100)
(split (turn/radians (/ pi 2)))
(turn 90)
(draw 100)
(split (turn/radians (/ pi 2)))
(turn 90)
(split (turn/radians (/ pi 2)))
(draw 100)
(erase 100)
(draw 100) 
(neato)

