#lang racket
;FP1 - Using the Plot library
;Kyle Jolicoeur

(require plot)
;Forcing Plot to open in seperate windows
(plot-new-window? #t)
(list
 (plot (list
        ;Shows the X and Y axes
        (axes)
        ;Plots a cubed function with area under the curve
        (function-interval (lambda (x) (* x x x)) (lambda (x) 0) #:label "interval of y = x^3")
        ;Plots a x^4 function with a dotted line
        (function (lambda (x) (* x x x x)) -4.9 4.9 #:color 0 #:style 'dot #:label "y = x^2")
        ;Plots a linear function
        (function (lambda (x) (* 200 x)) #:label "y = 200x")) #:title "Powers of x")
 ;Second plot window
 (plot (list
        ;Shows the X and Y axes
        (axes)
        ;Plots a sin curve from -pi to pi
        (function-interval sin (lambda (x) 0) (- pi) pi #:label "y = sin(x)" #:color "green")
        ;Plots a red and green sin function
        (function-interval (lambda (x) (sin (- x pi))) (lambda (x) 0) (- pi) pi #:label "y = sin(x - pi)" #:color "red")) #:title "Trig functions")
 ;Following plots play around with the 3d rendering
 (plot3d (surface3d (lambda (x y) (* (cos x) (cos y))) (- pi) pi (- pi) pi #:color "lightblue") #:title "3d Functions 1")
 (plot3d (list (surface3d (lambda (x y) (* (- x y) y)) (- 2) 2 (- 2) 2 #:color "red")
               (polar3d (lambda (a r) (sin a)) #:color "blue")) #:title "3d Functions 2"))




