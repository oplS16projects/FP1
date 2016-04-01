#lang slideshow
(require slideshow/play)

;(play-n	 	gen*	 	 	 	 
; 	 [	#:steps steps	 	 	 	 
;; 	 	#:delay delay-secs	 	 	 	 
; 	 	#:skip-first? skip-first?	 	 	 	 
; 	 	#:skip-last? skip-last?	 	 	 	 
; 	 	#:title title	 	 	 	 
; 	 	#:name name	 	 	 	 
; 	 	#:layout layout])
(play-n
 (lambda (n1 n2)
   ;Below code will bring in the text slowly
   (cellophane (t "Hello and welcome to my project")
               (* n1 (- 1.0 n2)))))
;(item	 [	#:width width	 	 	 	 
; 	 	#:gap-size sep-gap-size	 	 	 	 
; 	 	#:bullet blt	 	 	 	 
; 	 	#:align align	 	 	 	 
; 	 	#:fill? fill?	 	 	 	 
; 	 	#:decode? decode?]	 	 	 	 
; 	 	element ...)	 	→	 	pict?
;Make a slide generic
; This will have a constent string "This would be a heading"
(define (slide-n n z)
  (slide
   #:title "How to Generalize Slides"
   (item "This would be point number" (number->string n))
   (item "This would be point number" (number->string z))))
 
(slide-n 1 1.1)
(slide-n 2 2.2)
(slide-n 3 3.3)

;(get-slides-as-picts	 	path	 	 	 	 
; 	 	width	 	 	 	 
; 	 	height	 	 	 	 
; 	 	condense?	 	 	 	 
; 	 [	stop-after])	 	→	 	(listof pict?)

(require slideshow/slides-to-picts
         slideshow/play)

(define slides1 (get-slides-as-picts "awesome.jpg" 640 480 #f))
(slides1)

