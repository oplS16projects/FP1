
## My Library: Turtle Graphics
## Sean Berube

###Narrative:
I used the turtle graphics library. At first I familiarized myself with some basic functions such as move, draw, erase, and turn. After figuring out how to navigate the turtle, I delved into more complex functions such as split, which clones a turtle, and regular-poly which creates a certain number of n-sided shapes. My favorite function is neato, which is the main source of the cool designs.

###Highlights:
The code below shows how I cloned the turtles (split) and how I navigated them while drawing lines that traced their path (draw-offset). The two arguments of draw-offset are the amount of space to move the turtle horizontally and vertically, respectively. The argument to split makes it so the cloned turtle faces the original in a right angle.
* (draw-offset 240 250)
* (split (turn/radians (/ pi 2)))
* (split (turn/radians (/ pi 2)))
* (draw-offset -100 -200)
 
These two lines are the main cause of the aesthetic appeal to my file. Regular polys drew squares and pentagons with a radius of 2, and neato did the really complex circular designs.
* (regular-polys 4 2)
* (regular-polys 5 2)
* (neato)

The last function I thought was neat was dotted-lines, which does as its name says - makes dotted lines emanate through each respective turtle. However, I excluded it from my code because it would have made the output distorted and overwhelming.
* (dotted-lines)

###Output/Diagram
This image comprises my output itself, so I thought I would combine the output/diagram sections with this one image. Each red triangle represents a turtle. Although I cloned a few turtles from the split function, they have ultimately been multplied exponentially (and in a circular notation) due to the neato function. 

![alt tag](https://github.com/sberube484/FP1/blob/master/output.PNG)
