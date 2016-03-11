#lang racket

(require plot)
(plot-new-window? #t)

(define minx (- 10))
(define maxx 10)

(define (make-plottable type name func) (list type name func))
(define (my-plot plottable) (if (string=? (car plottable) "2d")
                                (plot (function (caddr plottable) minx maxx #:label (cadr plottable)))
                                (plot3d (surface3d (caddr plottable) minx maxx minx maxx) #:z-label (cadr plottable))))

(define sample1 (make-plottable "2d" "y=3x+6" (lambda (x) (+ (* 3 x) 6))))
(define sample2 (make-plottable "2d" "y=x^2" (lambda (x) (* x x))))
(define sample3 (make-plottable "2d" "y=x^3" (lambda (x) (* x x x))))
(define sample4 (make-plottable "3d" "z=(x^3)-(y^2)" (lambda (x y) (- (* x x x) (* y y)))))

;;(my-plot sample1)
;;(my-plot sample2)
(my-plot sample3)
(my-plot sample4)