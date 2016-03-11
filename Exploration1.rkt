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
