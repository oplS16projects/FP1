#lang racket
(require plot)

(plot3d (surface3d (lambda (x y) (* (cos x) (sin y)))
                   (- pi) pi (- pi) pi)
        #:title "An R x R -> R function"
        #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)")

(plot (list (function-interval (lambda (x) (- (sin x) 3))
                               (lambda (x) (+ (sin x) 3)))
            (function-interval (lambda (x) (- (sqr x))) sqr #:color 4
                               #:line1-color 4 #:line2-color 4))
      #:x-min (- pi) #:x-max pi)

