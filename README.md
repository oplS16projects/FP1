# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: graphics/turtles
My name: Samir Khoulani


To begin my project exploration, I looked into the turtle library, as it appealed to me the most. This library was pretty interesting as it involved moving the "turtle" around, which could be used to trace where it has been. The main functions learned were <i>draw, turn, erase, draw-offset</i>, and <i>home</i>. After I got these down, and experiented with shape construction shown in <b>Fig. 1</b>, I began to look into recursion.


```racket
;square with draw-offset
(draw-offset 0 100)
(draw-offset 100 0)
(draw-offset 0 -100)
(draw-offset -100 0)

;Equilateral triangle
(turn 30) 
(draw n)
(turn 120)
(draw n)
(turn 120)
(draw n)

;Square
(draw n)
(turn 90)
(draw n)
(turn 90)
(draw n)
(turn 90)
(draw n)
 ```
 <b>Figure 1.</b><i> Code for both a square and equilateral triangle.</i>


Because there was not much information I could find outlining recursion with turtles, this took a while. Seen in <b>Fig. 2</b>, my first attempt at recursing used <i>draw-offset</i> and a base case of a null list (I wasn't sure what it should be) which turned out to be completely innefective. 

```racket
(draw-offset n n)
(draw-offset (* -1 2 n) 0)
(draw-offset n (* -1 n))
(draw-offset (* 0.5 n) (* 0.5 n))
(draw-offset (* -1 n) 0)
(draw-offset (* 0.5 n) (* 0.5 n))
(draw-offset (* 0.5 n) (* 0.5 -1 n))
(draw-offset (* 0.5 -1 n) (* 0.5 -1 n))
(draw-offset n n)
(draw-offset (* -1 2 n) 0)
(draw-offset n (* -1 n))
(split (turn 0))
(recursive-call (* 0.5 n))
 ```
 <b>Figure 2.</b><i> My first attempt at creating code to be used in the recursive function.</i>

The more effective method, however, proved to involve using <i>draw</i> instead. After a significantly large portion of testing I realized that the function <i>home</i>, which just resets the turtle's position, might be perfect for a base case. Realizing that this would work, and I wouldn't get an error or and endless loop, I then took the code for the equilateral triangle I made from <b>Fig. 1</b> and started experimenting.

My first goal was to make triangles bigger and bigger from the center, but I realized that I wanted to do something with more than one triangle recursing instead. After pasting the code for my triangle three more times, I used the turn function to rotate the triangle in a way such that after each triangle was placed, the next one would be placed 90 degrees clockwise. <b>Fig. 3</b> shows the code for `(shape-r side)`, which takes a pixel length, and increases it by a factor of 0.9 after each recursive call. The resulting four triangles create a Knights' Templaresque design shown in <b>Fig. 4</b>, with triangles recursing within eachother.

```racket
(define (shape-r side)
    (if (< side 10)  (home) ;base case
      (let ((n (* 0.9 side)))
        (home)
        (turn 60) ;equilateral triangle
        (draw n)
        (turn 120)
        (draw n)
        (turn 120)
        (draw n)
        
        (turn 30) ;equilateral triangle
        (draw n)
        (turn 120)
        (draw n)
        (turn 120)
        (draw n)
        
        (turn 30) ;equilateral triangle
        (draw n)
        (turn 120)
        (draw n)
        (turn 120)
        (draw n)
        
        (turn 30) ;equilateral triangle
        (draw n)
        (turn 120)
        (draw n)
        (turn 120)
        (draw n)
        
        (shape-r n) ;recurse
       )))
```
<b>Figure 3.</b> <i> The recursive function `(shape-r side)`.</i>

![FP1 Image Output](https://github.com/skhoulani/FP1/blob/master/FP1output.png)
<b>Figure 4.</b> <i> The resulting output of `(shape-r 500)`.</i>

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
