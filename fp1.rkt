#lang slideshow

(require slideshow/play slideshow/base)


(define myslide (slide
 #:title "I Made a slideshow in Racket"
 (t "this is my racket show")))

(define mysecondslide (slide
  #:title "second demo slide"
  (it "we can write italic text")
  (bt "we can write bold text")
  (bit "we can also do both")))

(define myThirdslide (slide
 #:title "Display Bullet points"
 (item "We Can Add Bullets")
 'next
 (item "And Then view them sequencially")
 'next
 'alts
 (list (list (item "Like this")
             'next
             (item "Now Replace This bullet"))
       (list (item "With a different one")
             'next
             (item "and another one"))
       (list (item "BECAUSE")))
 'next
 (item "indeciveness is a way of life")))

(define myfourthslide
  (slide
   #:title "Here's a Picture of 2 Chainz"
   (bitmap "2chainz.jpg")))

(define myLastSlide
  (slide (t "end")))
                       
  