#Lokesh Manchi

#Part 1: Exploration
I explored a couple of libraries so I could create a couple simple programs

1- 2htdp/imag

2- 2htdp/universe
 
#Part 2: 
The first program I wrote was a simple image that moves, it starts from the top and goes to the bottum of the screen and
dissapears. I didn't like how it was going off the screen so I edited the code and make it so that when it hits the bottum of the window it stops. This was challenging at first but all I needed was 2 conditions. 
```racket
#lang racket
(cond ((<= height h-landed)
           (place-image h 70 height (empty-scene Width Height)))
          ((> height h-landed)
           (place-image h 21 h-landed
                        (empty-scene Width Height))))

```
![stack Overflow](FP1/Letterh1.jpg)
One when the height of the image is less than or equal to the base and another when the height is greator than the base. It starts off at the right corner of the window and when it touches the bottom it jumps to the left corner.

#Part 3: Animation
 For the next to programs I wanted to do some sort of animation. The first one is a spinning star and the second one is a free moving angry-bird picture. This code created the star that is an online in darkred.
 ```racket
#lang racket
(star-polygon 40 7 3 "outline" "darkred")
```
and the star spins in a counter-clockwise direction becuase of
```racket
#lang racket
(rotate-second star) (rotate (* 2 page-speed) star)
```
if you change the 2 to -2 it would turn the other way.

The last program was the free moving angry bird. The only thing that you needed to make the image more was to chance the coordinates and you can do that by using car and cdr to access the X(car) and Y(cdr). Below is a sample if I was to move the image to the left, all I would need to chance in the X coordinate.
```racket
#lang racket
[(key=? a-key "left")  (cons (- (car w) 1) (cdr w))]
```
 







