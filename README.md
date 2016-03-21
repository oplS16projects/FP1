
My Library: (Slideshow: Figure and Presentation Tools)
My name:Ian Roberts

Write what you did!
Remember that this report must include:

While initially I was hoping to get more creative than a slideshow library, after glancing over all the cool features in this
library, it was clear that with the freedom of putting anything on a slide and the customizable  options that this would be 
a good choice. I began by playing around with the layout options. They seem tricky and will definitely need a detailed look-through, so for now I hard-coded the newline with multiple blank spaces. This of course may render differently on other computers. Alternatively I could of used two text outputs (t "foo") and prefixed the spaces.  I went to the effects from there and that is when I implemented the revealing click. 

update: I have added more slides
Slide 1 : above
slide 2 : a simple bulleted list, no troubles here
slide 3 : an eye test, I had difficulty attempting to left align "Row n"  and center the rest of the text while on the same line. my workaround for this was to hardformat it with spaces
slide 4 : although there are technically multiple slides here they simply show the ability of color choice within slideshow

Here is the code breakdown


slide 1

```
(slide #:title "side 1 "
;below creates "alternating with regular to bold characters
 ( para "a"(bt "l")"t"(bt "e")"r"(bt "n")"a"(bt "t")"i"(bt "n")"g")
;
 ( para ; this creates alternating on two lines with italic and bold alternating lettering
  (it "  a   t   r   a   i   g                                     ") 
   ( bt"    l   e   n   t   n"))
;
 (t "click" );simply displays click

'next  (t "c" )  'next  (t "l" );reveals the word click for each click
 'next  (t "i" )  'next  (t "c" )
 'next  (t "k" ) 

 )


```

slide 2 

```
(slide
#:title "slide 2"

(t  "bulleted list") ;line with no bullet
(item  "thing 1")   ; item by defualt prefixes the string with a bullet
(item "thing 2, click for another   ")
'next (item "another  "))

```


slide 3 
```
(slide
#:title "slide 3 "
 #:layout 'top ;lays out the slide in a 'top' format

(t "eye test")
(t "click to continue")

;below the size of the text is lowered per line, I think the default is 36 and from there i subtracted 6 points per line
'next    (para   "row 1"  	             "                   J D W G D X G" )
'next    (para  "row 2" (with-size 30 (t "                     K R X L D B S"))   )
'next    (para  "row 3" (with-size 24 (t "                            1 D G E Z V T"))   )
'next    (para  "row 4" (with-size 18 (t "                                         K U E 2 H C S"))   )
'next    (para  "row 5" (with-size 12 (t "                                                                  S C Z M U 5 J"))   ))
 
```

slide 4 
```
(define (colorz col);this is a procedure that creates slides
(current-title-color col); this sets the color of the title
  (slide
  
  #:title "colors COLORS cOlOrS CoLoRs"
   ))

(colorz "red")
(colorz "green")
(colorz "blue")
(colorz "orange")
(colorz "yellow")
(colorz "purple")
```
 ![alt text](https://raw.githubusercontent.com/ia-n/FP1/master/newout.gif)
