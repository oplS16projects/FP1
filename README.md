
```racket
#lang slideshow

(slide ;;creates a slide
 #:title (bt "Slideshow Thing") ;;title of the first slide
 (item (tt "First slide I think")) ;;bullet point for first slide
 'next ;;next element on list
 (item (tt "Second slide I hope")) ;;next bullet point on list incremented with arrow keys
 'next ;;next element in list
 (item (tt "Third slide"))) ;; final bullet point
(slide ;;repeat with different data
 #:title (tt "Another Slide Thing")
 (item (tt "Cool beans"))
 'next
 (item (tt "lambda"))
 'next
 (item (tt "wow")))
```
## My Library: Slideshow: Figure and Presentation Tools
For my first exploration of a Racket library I chose Slideshow: Figure and Presentation Tools which builds slides based of the code you input. This seems like a very powerful library for people wishing to create a slidshow very quickly and without dealing with complex styling. Overall, I didn't really enjoy this library very much but it was a cool first project to segway into Racket libraries. "Slide" creates a new slide for the slideshow, and #:title is self-explanatory, but adds a title to the top of the page. Each "item" is a bullet point on the slide show. I believe you can add images to using this library, but I couldn't figure it out.

![image](http://i.imgur.com/5OnbHCU.png "Output")

