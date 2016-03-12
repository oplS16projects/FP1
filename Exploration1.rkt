#lang slideshow

(require slideshow/play)

(play-n
 (lambda (n1 n2)
   (cellophane (t "Slideshow Racket Library Demo")
               (* n1 (- 1.0 n2)))))

(slide
 #:title "What Does The Fox Say?"
 #:layout 'top
 'next
 'alts
 (list (list (item "*proceeds to kill, skin, and sell fox to native Cherokee indians*")
             'next
             (item "*feels bad*")
             'next
             (item "*becomes fox whisperer*"))
       (list (item "*marries cute, indpendent lady fox*")
             'next
             (item "*has family*")
             'next
             (item "*discovers that he once killed wife's father*"))
       (list (item (tt "*dies*")))
       (list (item (tt "*the fox says nothing*")))))

(slide
 #:title "Hey."
 #:layout 'top)

(slide
 #:title "Yep."
 #:layout 'top)

(slide
 #:title "That was a tad dark."
 #:layout 'top)

(slide
 #:title "G'day."
 #:layout 'top)