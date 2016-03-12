#lang racket
(require 2htdp/image)

(define eyes(overlay/offset ;;creates the eyes object which is a pair of circles with rectangles positioned
                            ;;positioned over the circles.
             
             (overlay/offset
              
              (overlay/offset
               (rectangle 100 20 "solid" "red")
               0 0
               (circle 50 "solid" "blue"))
              
              100 0
              (rectangle 100 20 "solid" "black"))
             
                  50 0
                  (circle 50 "solid" "green")))

(define (chains shape_object) (overlay/offset shape_object 200 0 shape_object)) ;;it will make a chain of eyes
(define r1 (beside eyes eyes eyes eyes eyes eyes))

(define Generate (above  r1 r1 r1 r1 r1 r1)) ;;Type generate in the interactive screen to run program. 