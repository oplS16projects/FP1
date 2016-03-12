#lang racket
;;(require pict)
(require 2htdp/image)


; (circle radius mode color)
;  radius : (and/c real? (not/c negative?))
;  mode : mode?
;  color : image-color?

(define num (circle 30 "solid" "red"))

(define eyes(overlay/offset (overlay/offset (overlay/offset (rectangle 100 20 "solid" "red")
                                  0 0
                                  (circle 50 "solid" "blue"))
                  100 0
                  (rectangle 100 20 "solid" "black")
                  )
                  50 0
                  (circle 50 "solid" "green")))
(define (chains x) (overlay/offset x
                                  200 0
                                  x))
(define r1 (beside eyes eyes eyes eyes eyes eyes))
