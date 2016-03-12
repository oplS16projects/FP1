# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

#Part 1: Get github
Have it :)
 
#Part 2: Try a Library
I played around with Racket's pict library and the 2htdp/image library.

#Part 3: Report

## My Library: Slideshow Library, Pict Library and 2htdp/image library
My name: Rajia Abdelaziz

I was very excited to start learning about the libraries that Racket has. I began by reading over some of the documentation found at https://docs.racket-lang.org/guide/More_Libraries.html . Two of the libraries that interested me in particular were the racket/draw library and the racket/gui library because I really like UI and making things look nice. However, the assignment specifically said nt to use either of these two libraries so I began experimenting with other libraries. 

The first library I played with is the Slideshow library (a slideshow for creating presentation slides). This library interested me because I am constantly using Microsoft Powerpoint to create slideshows for class presentations so I wanted to explore what a Racket Slideshow would be like in comparison. 

The main function used in the Slideshow is the slide function. This adds a slide to the presentation with the given content specified. To play around with Slideshow I created a simple slideshow with Titles and Text. I used bt to make bold text, bit to make bold italic text and colorize to give the text a color. Screenshots of the presentation are shown below.

```
;;Playing around with the Slideshow library

#lang slideshow

;; Using the slide function to create four slides
(slide
 #:title " "
 ;; bt is the normal way to make bold text
 (bt "Rajia Abdelaziz FP1") 
 ;; bit creates bold italic text 
 ;; colorize gives the text a color
 (colorize (bit "A Slideshow on Why Cat's are better than Dogs :)") "purple")
)

(slide
 #:title " "
 (bt "Reason 1: ") 
 (colorize (bit "Cat's can be left unsupervised") "blue")
 )

(slide
 #:title " "
 (bt "Reason 2: ") 
 (colorize (bit "Cat's don't need to be walked") "pink")
 )

(slide
 #:title " "
 (bt "Reason 3: ") 
 (colorize (bit "Because Rajia said so!!!") "orange")
 )

(provide slide)

```
The next two libraries I played around with are the Pict Library and the 2htdp/image library. I was interested in the pict library because it is essentially a more functional abstration layer placed on top of the racket/draw library and it is useful for creating slide presentations. The pict library is one of the standard racket functional picture libraries and the other one is the 2thdp/image. 
The image library essentially provides basic image construction functions with combinators to build more complex images. The images include bitmaps, various polygons, ellipses, shapes and text. This library allows you to rotate, scale, flip, and overlay pictures on top of each other. 

I began experimenting with the library by drawing two pink stars with bold text in between them. Next, I drew a catPic by creating a bitmap from an image file. 

```
;;Playing around with the 2htdp/image library

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

```
Finally, I decided to play a little bit more with shapes on a more high-level basis by incorporating recursive functions and lists. 
I created a function called r-squares which takes an input n and draws n pink squares. The function checks if n is equal to 1, if so it draws the square, otherwise it calls itself again with a new input of n-1. It uses the function hc-append to draw the images horizontally 20 pixels away from each other. 

```
;;Playing around with the 2htdp/image library

#lang slideshow
(require 2htdp/image)

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

```
I also followed an example in the Racket Documentation to create a function that creates a list of rainbow colored items. The function works by simply calling the map function and passing it a procedure and a list of colors. The object originally passed to the function gets transformed to each of the colors and each instance of the object is returned in a list. 


```
;;Playing around with the 2htdp/image library

#lang slideshow
(require 2htdp/image)

;; This function takes an object an creates a list of the object in a variety of colors
(define (square n)
  colorize (filled-rectangle n n) 
)
(define (rainbow p)
  (map (lambda (color)
         (colorize p color))
  (list "red" "orange" "yellow" "green" "blue" "purple")))

```
Please let me know if you have any questions!
Best,
Rajia
