; John Perkins

#lang racket
(require plot)

(plot-new-window? #t)

(parameterize ([plot-width 500]    ;sizes for each window, don't show the x/y axis labels
               [plot-height 500]
               [plot-x-label #f]
               [plot-y-label #f])
  (plot (list (function-interval (lambda (a) (- (sin a) 3))  ;interval for a 2d graph so the part inside of it
                                 (lambda (a) (sqr a))
                                 #:color '(255 125 125)      ;change color
                                 #:line1-color '(255 0 0)    ;change line colors to darker
                                 #:line2-color '(255 0 0)
                                 #:label "y = -3sin(x), y = sqr(x)")   ;label the graph
              (function (lambda (a) a)
                        #:color '(0 255 0)
                        #:width 5           ; change the width of the line
                        #:label "y = x"))
        #:x-min -10      ;boundaries of the graph
        #:x-max 10
        #:y-min -10
        #:y-max 10)
  (plot3d (contour-intervals3d (lambda (x y) (* (cos x) (sin y)))     ;interval for a 3d graph
                               (- pi) pi (- pi) pi)
          #:x-min (- pi)
          #:x-max pi
          #:y-min (- pi)
          #:y-max pi
          #:z-min (- pi)        ;z-min and max added as a boundary
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
            #:title "My Graph!"              ;title for my graph
            #:x-min -10
            #:x-max 10
            #:y-min -10
            #:y-max 10)

(plot-bitmap (function sin (- (* 5 pi)) (* 5 pi))        ;first bitmap test
             #:title "y = sin(x)"
             #:x-min (- (* 5 pi))
             #:x-max (* 5 pi)
             #:y-min (- (* 5 pi))
             #:y-max (* 5 pi))