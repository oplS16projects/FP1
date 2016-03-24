#lang racket

(require plot)
(require plot/utils)

;;;;
;;; Here's a list of the functions I defined to display the plots:
;;;
;;; test plots:
;;; (display-basic-plots)
;;;
;;; basic function plots:
;;; (display-circle-plots)
;;; (display-square-plots)
;;; (display-polar-circles)
;;; (display-polar-squares)
;;;
;;; parametric plots (display x(t) and y(t) first and then display result):
;;; (display-parametric-circles)
;;; (display-parametric-square)
;;; (display-rotated-parametric-square)
;;;
;;; parabola approximations:
;;; (display-parabola1)
;;; (display-parabola2)
;;;
;;; 3D:
;;; (display-spheres)
;;; (display-isosurfaces)
;;;
;;; Miscelleneous:
;;; (display-polar-misc)
;;; (display-parametric-misc)
;;; (display-sphere-cartesian)
;;;;


;;;;
;;; Basic Functions

;; 2D
(define sine (function sin (- pi) pi
                       #:label "y = sin(x)"))
(define cosine (function cos (- pi) pi
                         #:label "y = cos(x)" #:color 2))
;; 3D
(define 3d-surface
  (contour-intervals3d (λ (x y) (* (cos x) (sin y)))
                       (- pi) pi (- pi) pi))
;; plot and display
(define (display-basic-plots)
  (display (list (plot (list sine cosine)
                       #:title "Two functions on the same graph.")
                 (plot3d 3d-surface
                         #:title "An R × R → R function"
                         #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)"))))


;;;;
;;; Cartesian

;; circle
(define (circle radius)
  ;; One upper semicircle and one lower semicircle
  (list (function (λ (x) (sqrt (- radius (* x x))))
                  (- radius) radius
                  #:label "circle top")
        (function (λ (x) (- (sqrt (- radius (* x x)))))
                  #:label "circle bottom" #:color 2)))
;; filled
(define (filled-circle radius)
  ;; simply the interval between the two semicircles
  (function-interval (λ (x) (sqrt (- radius (* x x))))
                     (λ (x) (- (sqrt (- radius (* x x)))))
                     -1 1))

;; squares
(define (square side-length)
  (let ((x-min (- side-length))
        (x-max side-length))
    ;; 2 horizontal and 2 vertical line segments
    (list (function (λ (x) x-min)
                    x-min x-max
                    #:color 2)
          (function (λ (x) x-max)
                    x-min x-max
                    #:color 2)
          (inverse (λ (x) x-max)
                   x-min x-max
                   #:color 2)
          (inverse (λ (x) x-min)
                   x-min x-max
                   #:color 2))))
;; rotated 45 degrees
(define (rotated-square side-length)
  ;; multiply by (sqrt 2) for x-min and x-max
  ;; because of the pythagorean theorem / 45-45-90 triangles
  (let ((x-min (- (* side-length (sqrt 2))))
        (x-max (* side-length (sqrt 2))))
    ;; use absolute value function to get v-shape
    ;; we need one pointing up and one pointing down
    (list (function (λ (x) (- x-max (abs x))) 
                    x-min x-max)
          (function (λ (x) (- (abs x) x-max))
                    x-min x-max))))

;; display
(define (display-circle-plots)
  (display (list (plot (circle 1))
                 (plot (filled-circle 1)))))

(define (display-square-plots)
  (display (list (plot (list (square 1)
                             (rotated-square 1))
                       #:title "Two squares of the same size.")
                 (plot (list (square 1)
                             (rotated-square (/ (sqrt 2) 2)))
                       #:title "Two squares running from -1 to 1 on the x and y axes."))))


;;;;
;;; Polar

;; circle
(define (polar-circle radius)
  ;; trivial
  (polar (λ (θ) radius)))
;; filled
(define (filled-polar-circle radius)
  ;; fill from the center of the circle, but make that "line" transparent
  ;; so there's no dot in the center of the circle
  (polar-interval (λ (θ) radius)
                  (λ (θ) 0)
                  #:line2-style 'transparent))

;; square
(define (polar-square side-length)
  (let ((a (* 1/4 pi))
        (b (* 3/4 pi))
        (c (* 5/4 pi))
        (d (* 7/4 pi)))
        (polar (λ (θ)
                 ;; to get straight lines we need the arcsin and arccos functions
                 ;; hence, divide by sin and cos
                 (cond ((<= 0 θ a) (/ side-length (cos θ)))
                       ((<= a θ b) (/ side-length (sin θ)))
                       ((<= b θ c) (- (/ side-length (cos θ))))
                       ((<= c θ d) (- (/ side-length (sin θ))))
                       ((<= d θ) (/ side-length (cos θ)))))
               #:color 2)))
;; rotated
(define (rotated-polar-square side-length)
  ;; when sidelength = 1,
  ;; |x| + |y| = sqrt(2), therefore
  ;; |r*cos| + |r*sin| = sqrt(2), therefore
  ;; r=sqrt(2) / (|cos|+|sin|)
  (polar (λ (θ) (/ (* side-length (sqrt 2)) (+ (abs (cos θ)) (abs (sin θ)))))))

;; display
(define (display-polar-circles)
  (display (list (plot (polar-circle 1)
                       #:title "Circle drawn using polar coordinates.")
                 (plot (filled-polar-circle 1)
                       #:title "Filled circle drawn using polar coordinates."))))
  
(define (display-polar-squares)
  (display (list (plot (list (polar-square 1)
                             (rotated-polar-square 1))
                       #:title "Two squares of the same size drawn using polar coordinates.")
                 (plot (list (polar-square 1)
                             (rotated-polar-square (/ (sqrt 2) 2)))
                       #:title "Two squares running from -1 to 1 on the x and y axes drawn using polar coords."))))


;;;;
;;; Parametric

;; circle
(define (parametric-circle radius)
  (parametric (λ (t)
                (vector (* radius (cos t))
                        (* radius (sin t))))
              0 (* 2 pi)))
;; filled circle
(define (filled-parametric-circle radius)
  (parametric-interval (λ (t) (vector (* radius (cos t)) (* radius (sin t))))
                       (λ (t) (vector 0 0))
                       #:line2-style 'transparent
                       0 (* 2 pi)))

;; Here's where things get complicated.
;; To define the squares, we need functions that will give us the
;; desired coordinates from a single parameter.

(define (square-function [phase 0])
  (let ((period 4))
    (define (to-range x)
      ;; ensure 0 < x < period
      (cond ((< x 0) (to-range (+ x period)))
            ((>= x period) (to-range (- x period)))
            (else x)))
    (define (single-period x)
      (cond
        ((<= 0 x 1) 1)
        ((<= 1 x 2) (let ((y (* 2 (- x 1))))
                      (- 1 y)))
        ((<= 2 x 3) -1)
        ((<= 3 x 4) (let ((y (* 2 (- x 3))))
                    (- y 1)))))
    (λ (x) (single-period (to-range (- x phase))))))
  
(define (parametric-square side-length)
  (parametric (λ (t)
                (vector (* side-length
                           ((square-function -1/2) t))
                        (* side-length
                           ((square-function 1/2) t))))
              0
              (* 4 side-length)))

;; now for the rotated square

(define (rotated-square-function [phase 0])
  (let ((period 2))
    (define (to-range x)
      ;; ensure x is in correct range
      (cond ((< x -1) (to-range (+ x period)))
            ((>= x 1) (to-range (- x period)))
            (else x)))
    (define (single-period x)
        (let ((y (* 2 (sqrt 2) x)))
          (cond
            ((<= -1 x 0) y)
            ((<= 0 x 1) (- y)))))
    (λ (x) (single-period (to-range (- x phase))))))

(define (rotated-parametric-square side-length)
  (parametric (λ (t)
                (vector (* side-length ((rotated-square-function 1/2) t))
                        (* side-length ((rotated-square-function) t))))
              -1 1))


;;; Display functions for the above

(define (display-parametric-circles)
  (display (list (plot (list
                        (function sin (- pi) pi
                                  #:label "y")
                        (function cos (- pi) pi
                                  #:label "x" #:color 2))
                       #:title "Functions used to generate a circle's coordinates.")
                 (plot (parametric-circle 1))
                 (plot (filled-parametric-circle 1)))))


(define (display-parametric-square)
  (display (list (plot (list
                        (function (square-function 1/2) -2 2
                                  #:label "y")
                        (function (square-function -1/2) -2 2
                                  #:color 2 #:label "x"))
                        #:title "Functions used to generate a square's coordinates.")
                 (plot (parametric-square 1)))))

(define (display-rotated-parametric-square)
  (display (list (plot (list (function (rotated-square-function 1/2) -1 1
                                       #:label "y")
                             (function (rotated-square-function) -1 1
                                       #:label "x" #:color 2))
                       #:title "Functions used to generate a square's coordinates.")
                 (plot (rotated-parametric-square 1)))))


;;;;
;;; Parabola via (lines) and (linear-seq)

;;; This function returns a shape that approximates a parabola.
;;; The higher n is, the more closely it approximates the correct shape.
(define (parabola1 n)
  (define xs (linear-seq -1 1 n))
  (lines (map vector xs (map sqr xs))))

;; This extends the previous function to go beyond -1 to 1 on x axis
(define (parabola2 n)
  ;; note the (- (expt 2 n) 1) instead of just n
  (define inner-xs (linear-seq -1 1 (- (expt 2 n) 1)))
  
  ;; take the reciprocal of the inner-xs to get the outer-xs
  ;; note that this covers ground at an exponential rate
  (define outer-xs (map (λ (x) (/ x))
                       (filter (λ (x) (not (or (= x 0) (= x 1))))
                               inner-xs)))
  
  (define xs (sort (append inner-xs outer-xs)
                   <))
  (lines (map vector xs (map sqr xs))))

;; display

(define (display-parabola1)
  (display (list (plot (parabola1 3))
                 (plot (parabola1 15))
                 (plot (parabola1 255)))))

(define (display-parabola2)
  (display (list (plot (parabola2 2)
                       #:x-min -4 #:x-max 4 #:y-min 0 #:y-max 16)
                 (plot (parabola2 3)
                       #:x-min -4 #:x-max 4 #:y-min 0 #:y-max 16)
                 (plot (parabola2 4)
                       #:x-min -4 #:x-max 4 #:y-min 0 #:y-max 16))))

;;;;
;;; 3D functions

(define sphere-polar (polar3d (λ (θ ρ) 1)))

(define isosphere (isosurface3d
                   (λ (x y z) (sqrt (+ (sqr x) (sqr y) (sqr z)))) 1
                   -1 1 -1 1 -1 1))
(define double-cone (isosurface3d
                     (λ (x y z) (- (sqr z) (sqr x) (sqr y))) 0
                     -1 1 -1 1 -1 1))
(define octahedron (isosurface3d
                    (λ (x y z) (+ (abs x) (abs y) (abs z))) 1
                    -1 1 -1 1 -1 1))

(define (display-spheres)
  (display (list
            (plot3d sphere-polar)
            (plot3d isosphere))))

(define (display-isosurfaces)
  (display (list (plot3d isosphere)
                 (plot3d double-cone)
                 (plot3d octahedron))))

;;;;
;;; Miscellenious

;; mostly just failures to get the above to work properly

;; polar

(define bow
  (let ((a (* 1/2 pi))
        (b (* 2/2 pi))
        (c (* 3/2 pi))
        (d (* 4/2 pi)))
        (polar (λ (θ)
                 (cond ((<= 0 θ a) a)
                       ((<= a θ b) b)
                       ((<= b θ c) a)
                       ((<= c θ d) b)
                       (else a)))
               0 (* 5/2 pi))))

(define pinwheel
  (let ((a (* 1/2 pi))
        (b (* 2/2 pi))
        (c (* 3/2 pi))
        (d (* 4/2 pi)))
        (polar (λ (θ)
                 (cond ((<= 0 θ a) a)
                       ((<= a θ b) b)
                       ((<= b θ c) c)
                       ((<= c θ d) d)
                       (else a)))
               0 (* 5/2 pi))))

(define spiral
  (polar (λ (θ) θ)))

(define (display-polar-misc)
  (display (list (plot bow)
                 (plot pinwheel)
                 (plot spiral))))

;;parametric

(define oval
  (parametric (λ (t) (vector (sin (- 1 t)) (sin t)))
              0 (* 2 pi)))

(define hexagon
  (parametric (λ (t) (vector ((square-function) t)
                             ((square-function 1/2) t)))
              0 4))

(define rectangle
  (parametric (λ (t) (vector ((rotated-square-function) t)
                             ((rotated-square-function 1/4) t)))
              0 2))

(define (display-parametric-misc)
  (display (list (plot oval)
                 (plot hexagon)
                 (plot rectangle))))

;; 3D
(define sphere-cartesian (list
                          (surface3d (λ (x y) (sqrt (- 1 (sqr x) (sqr y))))
                                    -1 1 -1 1)
                          (surface3d (λ (x y) (- (sqrt (- 1 (sqr x) (sqr y)))))
                                    -1 1 -1 1)))

(define (display-sphere-cartesian)
  (display (plot3d sphere-cartesian)))
