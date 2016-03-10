#lang racket

(require plot)

;(plot (function (lambda (a) (* a a)) -3 3 #:label "x^2)"))

;(plot (list (axes)
 ;             (function (lambda (n) (* n n n)) -2 2)
  ;            (function (λ (x) x) #:color 0)
   ;           (function (lambda (n) (if (< 0 n) n (- 0 n))) -4 4 #:color 2)
    ;          (inverse sinh -2 2 #:color 3)))

;(plot3d (surface3d (lambda (x y) (+ (* x x) (* y y)))
          ;           -4 4 -4 4))

;(plot3d (surface3d (lambda (x y) (/ (* x x x) (* y y y)))
 ;-4 4 -4 4 #:color 2))

(define (funct f)
  (plot (function f -3 3)))

(define (funct3D f)
  (plot3d (surface3d f -4 4 -4 4)))