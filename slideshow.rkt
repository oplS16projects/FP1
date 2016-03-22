;;Playing around with the Slideshow library

#lang slideshow

(slide
 #:title " "
 (bt "Rajia Abdelaziz FP1") 
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