#lang slideshow
(require slideshow/slides-to-picts
         slideshow/play)

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

(slide (item #:align 'right (bitmap  "awesome.jpg")))

;(item	 [	#:width width	 	 	 	 
; 	 	#:gap-size sep-gap-size	 	 	 	 
; 	 	#:bullet blt	 	 	 	 
; 	 	#:align align	 	 	 	 
; 	 	#:fill? fill?	 	 	 	 
; 	 	#:decode? decode?]	 	 	 	 
; 	 	element ...)	 	→	 	pict?
;Make a slide generic

(define (slide-n n z)
  (slide
   #:title "How to Generalize Slides"
   (item "This would be point number" (number->string n))
   (item "This would be point number" (number->string z))))
 
(slide-n 1 1.1)
(slide-n 2 2.2)
(slide-n 3 3.3)

;If an element is 'next, then a slide is generated containing only the preceding elements,
;and then the elements are re-processed without the 'next. Multiple 'next elements generate
;multiple slides.

;If an element is 'alts, then the next element must be a list of element lists. Each list
;up to the last one is appended to the elements before 'alts and the resulting list of
;elements is processed. The last lists is appended to the preceding elements along with
;the remaining elements (after the list of lists) and the result is re-processed.

;A 'nothing element is ignored (useful as a result of a branching expression).

;A 'next! element is like 'next, except that it is preserved when condensing
;(via the --condense flag).
(slide
 #:title "Example"
 (item "First point")
 'next
 (subitem "Second sub item")
 'next
 'alts
 ;list of items and you can insert the keyword next
 (list
  (list (item "Third point")'next
        (item "Fourth point in list")))
 'next
 (item "Fifth step"))



