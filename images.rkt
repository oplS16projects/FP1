#lang slideshow
(require 2htdp/image)

;; Draw some Stars and Text
(star 40 "solid" "pink")
(bt "Rajia: FP1 ")
(star 40 "solid" "pink")

;;Defining a catPic
(define catPic
  (bitmap "catvsdog.jpg")
)

;; Display the cat picture
catPic

;; Defining a function to create the shape square using filled-rectangle
(define (pink-square n)
  (colorize (filled-rectangle n n) "pink" )
)
;; Defining a function to recursively draw n pink squares (50 pxs x 50 pxs)
(define (r-squares n)
  (if (= n 1)
         (pink-square 50)
         (hc-append
                    20
                    (pink-square 50)
                    (r-squares (- n 1)))
   )
)

;; This function takes an object an creates a list of the object in a variety of colors
(define (rainbow p)
  (map (lambda (color)
         (colorize p color))
  (list "red" "orange" "yellow" "green" "blue" "purple")))

;; This statement allows us to use the above code in a different racket file.
(provide rainbow pink-square r-squares)