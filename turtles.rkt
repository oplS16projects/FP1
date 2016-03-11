#lang racket
(require graphics/turtles)

(turtles #t)

;;distance - line distance
;;angle - turn angle
;;turns - number of turns
;;iterations - number of recursive iterations

(define (turn-turtle dist angle turns)
  (draw dist)
  (turn angle)
  (draw dist)
  (if(> turns 0)(turn-turtle (* dist .83) (* .91 angle) (- turns 1))0))
  
(define (recursive-pattern dist angle turns iterations)
  (turn-turtle dist angle turns)
  (if(> iterations 0)
     (recursive-pattern (- dist (* .10 dist)) angle turns (- iterations 1))(home)))

;;Save pattern
;;path example "C:/Users/Username/Desktop/pattern"
;;extension: 'png 'jpeg 'xbm 'xpm 'bmp
(define (save-pattern path extension)
  (if(save-turtle-bitmap path extension)(display "save successful")(display "save unsuccessful")))