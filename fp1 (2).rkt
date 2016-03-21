#lang slideshow
(require slideshow/text)

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



(slide
#:title "slide 2"

(t  "bulleted list") ;line with no bullet
(item  "thing 1")   ; item by defualt prefixes the string with a bullet
(item "thing 2, click for another   ")
'next (item "another  "))

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
