#lang racket
(require 2htdp/image)
(require 2htdp/universe)
;(require 2htdp/universe)
;(circle 30 "outline" "red")
;(rotate 5 (rectangle 50 50 "outline" "black"))
(define Height 200)
(define Width 100)
(define h
  (rotate 0
          (beside/align
           "center"
           (rectangle 10 50 "solid" "darkseagreen")
           (rectangle 20 10 "solid" "darkseagreen")
           (rectangle 10 50 "solid" "darkseagreen"))))
(define h-landed
  (- Height (/ (image-height h) 2)))

(define(touch-bottum height)
    (cond ((<= height h-landed)
           (place-image h 70 height (empty-scene Width Height)))
          ((> height h-landed)
           (place-image h 21 h-landed
                        (empty-scene Width Height)))))

(animate touch-bottum)




    

