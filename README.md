# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: pict3d
My name: Connor McGrory

 I played around with the pict3d library in racket.  This library is used for rendering interesting 3D
 objects to the screen.  However, I focused more on the live updates that cause animations.  For my
 exploration, I wrote a simple program that renders a cube to screen that will rotate and move.  The
 scene has two different light sources making for some interesting lighting effects on the cube.
 
 Below is a snipet of code from my program.
 
`(affine-compose (move-y (/ (cos (/ t 1000)) 2)) (move-z (/ (sin (/ t 1000)) 2)))`

This bit of code combines the two transformations on the y and z axis.  The variable 't' is my time
variable that will increment as the program runs.  The sine and cosine cause a circular movement, but
as the cube rotates, the plane in which it travels in a circle also rotates.
