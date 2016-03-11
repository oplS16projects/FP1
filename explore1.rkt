#lang racket
(require graphics/turtles)
(turtles #t)
(require graphics/turtle-examples)



 (split 90)
 (split (/ pi 2))
 (split (turn/radians (/ pi 2)))

 (draw-offset 240 250)
 (split (turn/radians (/ pi 2)))
 (split (turn/radians (/ pi 2)))
 (draw-offset -100 -200)
 (split (turn/radians (/ pi 2)))
 (draw 50)
 (draw-offset 0 -60
               )
 (regular-polys 5 5)
 (move -50)
 (move 50)
 (move-offset -50 0)
 (move-offset 50 0)
 (move-offset -30 40)
 
 (move -100)
 (move -200)
 (move 50)
 (move 20
        )
 (move 30)

 (regular-polys 4 2)
 (gapped-lines)
 (neato)
 (peano 2)
 