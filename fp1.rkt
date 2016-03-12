#lang racket

(require plot)

(define (sine x)
  (plot (function sin (* x -1) x #:label "y = sin(x)")))

(define (inv-sqr x)
  (plot (list (axes)
              (function sqr (* x -1) x #:label "y = x^2")
              (inverse sqr (* x -1) x #:label "x = y^2" #:color 3))))

(define (inv-sine x)
  (plot (list (axes)
              (function sin (* x -1) x #:label "y = sin(x)")
              (inverse sin (* x -1) x #:label "x = sin(y)" #:color 2))))

(define (sincos x)
  (plot (list (axes)
              (function sin (* x -1) x #:label "y = sin(x)" #:width 5)
              (function cos (* x -1) x #:label "y = cos(x)" #:color 2 #:style 'dot))))

(define (surface)
  (plot3d (surface3d (λ (x y) (* (cos x) (sin y)))
                     (- pi) pi (- pi) pi)
          #:title "An R × R → R function"
          #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)"))