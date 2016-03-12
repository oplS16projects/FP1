; John Perkins

#lang racket
(require plot)

(plot-new-window? #t)

(parameterize ([plot-width 500]
               [plot-height 500]
               [plot-x-label #f]
               [plot-y-label #f])
  (plot (list (function-interval (lambda (a) (- (sin a) 3))
                                 (lambda (a) (sqr a))
                                 #:color '(255 125 125)
                                 #:line1-color '(255 0 0)
                                 #:line2-color '(255 0 0)
                                 #:label "y = -3sin(x), y = sqr(x)")
              (function (lambda (a) a)
                        #:color '(0 255 0)
                        #:width 5
                        #:label "y = x"))
        #:x-min -10
        #:x-max 10
        #:y-min -10
        #:y-max 10)
  (plot3d (contour-intervals3d (lambda (x y) (* (cos x) (sin y)))
                               (- pi) pi (- pi) pi)
          #:x-min (- pi)
          #:x-max pi
          #:y-min (- pi)
          #:y-max pi
          #:z-min (- pi)
          #:z-max pi)
  (plot3d-bitmap (polar3d (λ (θ ρ) 1)
                   #:color '(0 0 255)
                   #:line-style 'solid)
          #:altitude 25)
  )

;normal line
(plot (list (function (lambda (x) x)
                      #:color 1
                      #:label "y = x")
            (function (lambda (x) (+ (* 3 x) 5))
                      #:color 2
                      #:label "y = 3x + 5"))
            #:title "My Graph!"
            #:x-min -10
            #:x-max 10
            #:y-min -10
            #:y-max 10)
      
;  (plot (list (plot (function-interval (lambda (a) (- (sin a) 3))
 ;                               (lambda (a) (+ (sin a) 3))
;
 ;       (plot (function-interval (lambda (a) a))
  ;            #:color '(255 255 255)
   ;           #:x-min -50
    ;          #:x-max 50
     ;         #:y-min -50
      ;        #:y-max 50)))

(plot-bitmap (function sin (- (* 5 pi)) (* 5 pi))
             #:title "y = sin(x)"
             #:x-min (- (* 5 pi))
             #:x-max (* 5 pi)
             #:y-min (- (* 5 pi))
             #:y-max (* 5 pi))