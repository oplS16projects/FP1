#lang racket
(require 2htdp/universe 2htdp/image)

;;player class
(define (player x y speed health)
  (define (dispatch id)
    (cond
      [(equal? id 'x) x]
      [(equal? id 'y) y]
      [(equal? id 'speed) speed]
      [(equal? id 'health) health]
      [(equal? id 'move-left) (set! x (- x 2))]
      [(equal? id 'move-right) (set! x (+ x 2))]
      [(equal? id 'move-down) (set! y (+ y speed))]
      [else (error "PLAYER -- no match for: " id)]))
  dispatch)

;;player (his name is bob)
(define bob (player 375 10 3 100))
(define bob-sprite (rotate 180 (bitmap "Plane.png")))

;;scene drawing
(define (render y)
  (underlay/xy (rectangle 800 600 "solid" "black") (bob 'x) (bob 'y) bob-sprite))

;;player object
(define UFO
  (underlay/align "center"
                  "center"
                  (circle 10 "solid" "green")
                  (rectangle 40 4 "solid" "green")))

(define (move world dt) world)

(define +dt 5)
(define -dt 5)

;;handle input
(define (handle-key-down world key)
  (cond
    [(key=? key "left") (bob 'move-left)]
    [(key=? key "right") (bob 'move-right)]
    [else world]
    )
)

(define (handle-key-up world key)
  (cond
    [(key=? key "left") bob]
    [(key=? key "right") bob]
    [else world]
    ))

;;world update
;;eventually instead of moving bob down, we want
;; to keep him still and move all the enemies up instead
;; creating the illusion he's moving down
(define (update-world dt)
  (bob 'move-down))

;;game initialization
(big-bang 0
          (on-tick update-world)
          (on-pad handle-key-down)
          (on-release handle-key-up)
          (to-draw render))