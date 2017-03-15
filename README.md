## My Library: Racket Turtle
By Douglas Richardson

At first I wanted to do something with data management and file manipulation, but I couldn't find anything like that so I am going with my backup which is messing around with Racket Turtle.

First of all let me say that actually getting the library to was supprisingly difficult. After doing quite a bit of searching I found out that the turtle that I wanted to install isn't in racket by default (unlike some options I think) and I needed to install something called a "Package".After looking into that I found this (https://pkgn.racket-lang.org/package/teachpacks) github page with the teachpacks package.Installation wasn't difficult after I found out how (put it in the racket folder for collects.) After that I was able to get to work on the actual library.

The basics of the turtle language is it is a list of procedures given to a draw function. So the function draw takes a list of procedures as an argument. Each procedure does something different with the turtle.

First I experimented with getting the simple forward procedure working with the draw procedure. Simple enough, but it is important to pass the forward procedure in as a list. So the command I had to use was
```(racket)
(define test_line (list(forward 100)))
(draw test_line)
```
![Figure 1](https://github.com/Doug-Richardson/FP1/blob/master/Fig1.jpg)

I then tried using the rotate command to draw a square which was also fairly simple.
```(racket)
(define line (forward 100))
(define rotate(turn-right 90))
(define square(list
               line rotate line rotate line rotate line))
(draw square)
```
![Figure 2](https://github.com/Doug-Richardson/FP1/blob/master/Fig2.jpg)

After getting a line and a square I did what any mathematician would do which was create a function to draw any equilateral polygon. I decided all polygons should have equal perimeter of 400 pixels (perimeter of that square in figure 2). This wasn't particularly challenging but I did mess it up once since the turtle should rotate 180-interior angle not just interior angle, if it was just the interior angle it would ether overshoot or not rotate far enough (unless it was a 4 sided polygon since 180-90 = 90) I used this code to get the function working
```(racket)
(define (draw-polygon n)
  (define line (forward (/(* 4 100) n)))
  (define rotate(turn-left (- 180(/(* 180 (- n 2)) n))))
  (define (polygon temp tot)
    (if (< temp tot)
        (cons line (cons rotate (polygon (+ temp 1) tot)))
        '()))
  (draw (cons (turn-right 90)(polygon 0 n))))
```  
And then I could run the code like this
```
(draw-polygon 3)
```
![Figure 3c](https://github.com/Doug-Richardson/FP1/blob/master/Fig3c.jpg)  
```(racket)
(draw-polygon 6)
```
![Figure 3a](https://github.com/Doug-Richardson/FP1/blob/master/Fig3a.jpg)
```(racket)
(draw-polygon 10)
```
![Figure 3b](https://github.com/Doug-Richardson/FP1/blob/master/Fig3b.jpg)

and lastly I attempted to approximate a circle as a 100 sided polygon with this result.
```(racket)
(draw-polygon 100)
```
![Figure 3d](https://github.com/Doug-Richardson/FP1/blob/master/Fig3d.jpg)

However because the turtle can only rotat in integer angle and move in integer pixels,100 was actually too precise and it ended up drawing over it's self a little bit.I found that 90 sided polygon was a slightly closer approximation of a circle without too much overlap, and 80 sided was not quite enough.
