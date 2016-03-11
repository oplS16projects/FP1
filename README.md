# Final Project Assignment 1: Exploration (FP1)
Library: "Slideshow: Figure and Presentation Tools"

Name: Chhun Kim

# What I did
I used the "Slideshow: Figure and Presentation Tools" to create a few powerpoint slides. This library allows developers to create sideshow, and there are so many features that we could actually create a simple presentation slide. For what I did was creating a few slide by using slideshow library. 
To add a new slide, we need to the slide function which is a build-in function.In the slide, we can edit the font and font-size of text, and adjusting the layout as well. Like Microsoft Powerpoint, we can also use the animation such 'next and 'alts which shows text or picture one at a time. 

# Code Highlights
```
#lang racket 

(require slideshow)

(slide
 #:title (bt "<***Welcome to UMass Lowell***>")
 #:layout 'tall
 #:gap-size (* gap-size 2)
 (t "Sping 2016")
 (t "COMP.3010 Organization of Programming Languages")
 (t "Final Project Exploration 1")
 (t "Slideshow: Figure and Presentation Tools")
 (t "Name: Chhun Kim")
 (t "")
 (t "<==>*<==>*<==>*<==>*<==>*<==>"))

(slide
 #:gap-size (* gap-size 2)
 (para #:align 'left
       (bit "<Content>"))
 'next
 (para #:align 'left
       "1. Creating Slides Presentation")
 'next
 (para #:align 'left
       "2. Making Slides")
 'next
 (para #:align 'left
       "3. Typesetting Racket Code in Slideshow")
 'next
 (para #:align 'left
       "4. Animations")
 'next
 (para #:align 'left
       "5. Legacy Libraries"))
```

# Output 

![alt tag](https://github.com/chhunkim/FP1/blob/master/EPouput1.PNG)
![alt tag](https://github.com/chhunkim/FP1/blob/master/EPoutput2.PNG)
![alt tag](https://github.com/chhunkim/FP1/blob/master/EPoutput3.PNG)

