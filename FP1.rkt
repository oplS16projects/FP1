#lang racket
(require graphics/turtles)

;Samir Khoulani
;FP1

(turtles #t)

(define (shape-r side)
    (if (< side 10)  (home)
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



;square non-recursively
;(draw-offset 0 100)
;(draw-offset 100 0)
;(draw-offset 0 -100)
;(draw-offset -100 0)


;equilateral triangle
;(turn 30) 
;(draw n)
;(turn 120)
;(draw n)
;(turn 120)
;(draw n)

; Square
;(draw n)
;(turn 90)
;(draw n)
;(turn 90)
;(draw n)
;(turn 90)
;(draw n)


; First failed-attempt (this went inside the loop)
;(draw-offset n n)
;(draw-offset (* -1 2 n) 0)
;(draw-offset n (* -1 n))
;(draw-offset (* 0.5 n) (* 0.5 n))
;(draw-offset (* -1 n) 0)
;(draw-offset (* 0.5 n) (* 0.5 n))
;(draw-offset (* 0.5 n) (* 0.5 -1 n))
;(draw-offset (* 0.5 -1 n) (* 0.5 -1 n))
;(draw-offset n n)
;(draw-offset (* -1 2 n) 0)
;(draw-offset n (* -1 n))
;(split (turn 0))
;(triforce (- 10 n)))))
 