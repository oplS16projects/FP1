#lang racket

 (require teachpacks/racket-turtle)
; I initially started off with a basic square and was fiddling around with the
; library getting used to how to draw shapes and etc.
; I then made a recursive function that would recursively call it self for a specific
; amount of time.
(define (recursive-pattern1 y x z times) 
  (if (< times 0) empty
      (append (list (forward x )(turn-left y)(turn-right z)) ;list that has three proc instructions
              (recursive-pattern1   y  (+ x 2) z (- times 1))))); moving the turtle 2 positions each time

(define square                 ;a function called square that is a list and is setting initial values and traits
  (list
   (change-pen-size 1) ;used one of the many procs in the library to change the thickness of the lines
   (change-color (list "red" "green" "blue" "yellow")) ;making the colors change
   (change-bg-color "grey")
   (recursive-pattern1 100 90 10 90))) ;calling the recursive pattern function to create a pattern

; basically the same idea as the two functions above but now a star pattern by using triangles
(define (recursive-pattern-2 y x times)
  (if (< times 0) empty
      (append (list (forward x )(turn-right y))
              (recursive-pattern-2 y (+ x 2) (- times 1)))))

(define star-pattern
  (list
   (change-color (list "red" "green" "blue"))
   (change-pen-style "long-dash")
   (change-bg-color "grey")
   (recursive-pattern-2 150 120 90)))






