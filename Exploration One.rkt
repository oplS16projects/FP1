;;Okay Now i think i got it working
#lang racket
(require teachpacks-master/racket-turtle)
;;Okay so the turtle has a front and can only really move forward.
;;turn-left and turn-right use degrees (eww)to turn turtle
;;pen-up and pen-down doexactly whay you would expect
;;(go-to x y) goes to a point, middle of screen is origin
;;go-to-origin exactly what it says on the tin
;;change-color just use "colorname" like "red" and "blue", they aren't case sensetive
;;change-pen-sizechanges width of ben to an integer amount of pixels
;;mirror-x-on and mirror-y-on mirrors turtle's drawing across x and y axis
;;the above is why the ser-origin command is usefull
;;hide-turtle and show-turtle also work
;;Fig.1
(define test_line (list(forward 100)))
;;end of Fig.1.
;;Okay so each of the procedures above is to be in a list and the draw command
;;will execute each command in the list in the order they appear.
;;by that logic I should be able to do something like this to draw a square
;;Fig.2
(define line (forward 100))
(define rotate(turn-right 90))
(define square(list
               line rotate line rotate line rotate line))
;;end of Fig.2
;;In theory I can create a method for constructing a polygon with n equal sides
;;The angle should be 180*(n-2)/n
;;Except that is interior angle and for this I want exterior angle (well 180-that angle anyway)
;;Because the turtle is turning that much so it needs to create that angle with the line
;;it just made
;;If we want them all to have the same perimeter then we would do
;;100*4/n for the length of each side. and we would need n of them
;;We start with turtle looking straight up so instead rotate it to look right and
;;curl it left
;;Interestingly there is no way to force it to look in a global direction, but
;;we can assume after this draw is over it will be looking straight down.
;;Fig.3
(define (draw-polygon n)
  (define line (forward (/(* 4 100) n)))
  (define rotate(turn-left (- 180(/(* 180 (- n 2)) n))))
  (define (polygon temp tot)
    (if (< temp tot)
        (cons line (cons rotate (polygon (+ temp 1) tot)))
        '()));;So polygon returns as a list of line, rotate, and the next polygon
  ;;which in this case means it is a list of line rotate tot-temp times
  (draw (cons (turn-right 90)(polygon 0 n))))
;;end of Fig.3
;;Because angles are integers, going past a certian point cant get a more perfict circle
;;infact because of this the turtle actually goes beyond where it should alittle bit with 100
;;90 is prettymuch the perfict circle