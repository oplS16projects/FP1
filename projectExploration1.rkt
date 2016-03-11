#lang racket

(require graphics/turtles)
(require graphics/turtle-examples)
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



