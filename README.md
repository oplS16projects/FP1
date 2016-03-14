
My Library: (Slideshow: Figure and Presentation Tools)
My name:Ian Roberts

Write what you did!
Remember that this report must include:

While initially I was hoping to get more creative than a slideshow library, after glancing over all the cool features in this
library, it was clear that with the freedom of putting anything on a slide and the customizable  options that this would be 
a good choice. I began by playing around with the layout options. They seem tricky and will definitely need a detailed look-through, so for now I hard-coded the newline with multiple blank spaces. This of course may render differently on other computers. Alternatively I could of used two text outputs (t "foo") and prefixed the spaces.  I went to the effects from there and that is when I implemented the revealing click. 

Here is the code

```
#lang slideshow


(slide #:title "super cool original title"
;below creates "alternating with regular to bold characters
 ( para "a"(bt "l")"t"(bt "e")"r"(bt "n")"a"(bt "t")"i"(bt "n")"g")

 ( para ; this creates alternating on two lines with italic and bold alternating lettering
   (it "  a   t   r   a   i   g                                     ") 
   ( bt"    l   e   n   t   n"))

 (t "click" );simply displays click
 
 'next  (t "c" )  'next  (t "l" );reveals the word click for each click
  'next  (t "i" )  'next  (t "c" )
 'next  (t "k" ) 

 )
```

 
