
;;according to the documentation
;;Most of the bindings defined in the manual are provided by the
;;slideshow language, which also re-exports all of racket except for
;;printable<%> (due to backward-compatibility issues) and all of pict.

#lang slideshow
(require slideshow/play)
 

 
(slide
 #:title "Slide 1"
(item (bt "The cow"))
(hline 1000 100)
'next
(item (bt "Jumps over"))
(hline 1000 100)
'next
(item (bt "The moon")))



(slide
 #:title "Slide 2"
 
 ;;from the documentation it states
 ;;that "t" is bult into "text"
(text "Lets try some font changes" (cons 'bold 'roman) 50)
(text "diagonal" null 50 (* 2 2))
(text "other diagonal" null 50 (* 2 1)))

;;has built in "slide"
;;default parameters
(play-n
(lambda (n)
  (cellophane (t "Default transition") n)))

(play-n
 (lambda (n1 n2)
   (cellophane
    (text "We can go larger" null 25)
               (* n1 (- 1 n2)))))
(play-n
 (lambda (n1 n2)
   (cellophane
    (text "Larger!" null 50)
               (* n1 (- 1.0 n2)))))
(play-n
 (lambda (n1 n2)
   (cellophane
    (text "Too large" null 200)
               (* n1 (- 1.0 n2)))))























   
   


