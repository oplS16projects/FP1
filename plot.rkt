#lang racket
(require plot)
(require math/base)
(require (only-in plot/utils linear-seq))	 

(define (logistic x)
  (/ 1 (+ (expt euler.0 (- x)) 1)))

(plot (list (axes)(function logistic (- 6) 6 #:label "y = L(x)")))

(plot (list (area-histogram logistic (linear-seq (- 6) 6 12) #:color 8 #:line-color 8)
            (function logistic (- 6) 6 #:label "Area under y = L(x)")))

(plot (list (axes)
            (function (lambda (x) (sin x)) 0 (* 2 pi) #:color "light blue" #:width 2.4 #:label "y = sin(x)")
            (function (lambda (x) (sin (* 2 x))) 0 (* 2 pi) #:color "lightgreen" #:width 2.2 #:label "y = sin(2x)")
            (function (lambda (x) (sin (* 3 x))) 0 (* 2 pi) #:color "orange" #:width 2.0 #:label "y = sin(3x)")))

(plot (parametric (lambda (t) (vector (sin (* 8 t)) (cos (* 6 t)))) 0 (* 2 pi)))

(plot3d (surface3d (lambda (x y) (sin (+ (/ (* x x) 2)
                                         (/ (* y y) 2))))
                   -3 3 -3 3))

