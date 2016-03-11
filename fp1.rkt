#lang racket
(require plot)

(define x 5)
;(plot (function sqr 0 5 #:label "y = x ^ 2"))
;(plot (points '(#(0 0) #(1 1) #(2 4) #(3 9) #(4 16) #(5 25)) #:color 'red))
;(parameterize ([plot-x-transform  log-transform])
;    (plot (function sin 1 100)))

;(define (plot-time+ t1 t2)
;    (seconds->plot-time (+ (plot-time->seconds t1)
;                           (plot-time->seconds t2))))

(define (earnings ms)
 (let ([d (seconds->date ms)])
   (expt (date-minute d) 2))
  
  )

(define xs '((seconds->date 1457675533041)))
(define ys '(55))

(define (dates)
  (list (seconds->date 1457675533041)))

(define (hour->date h)
  (date 0 0 h 1 1 2015 0 0 #f 0))

;(parameterize ([plot-x-ticks (date-ticks #:number 6 #:formats '("~dd ~H:~M:~f"))])
;   (plot (map vector xs ys)))

;(parameterize
;      ([plot-x-ticks      (time-ticks)]
;       [plot-y-far-ticks  (ticks-scale (plot-y-ticks)
;                                       (linear-scale 9/5 32))]
;       [plot-y-label      "Temperature (°C)"]
;       [plot-y-far-label  "Temperature (°F)"])
;    (define data
;      (list #(0 0) #(15 0.6) #(30 9.5) #(45 10.0) #(60 16.6)
;            #(75 41.6) #(90 42.7) #(105 65.5) #(120 78.9)
;            #(135 78.9) #(150 131.1) #(165 151.1) #(180 176.2)))
;    (plot (list
;           (function (λ (x) (/ (sqr x) 180)) 0 180
;                     #:style 'long-dash #:color 3 #:label "Trend")
;           (lines data #:color 2 #:width 2)
;           (points data #:color 1 #:line-width 2 #:label "Measured"))
;          #:y-min -25 #:x-label "Time"))

(parameterize
      ([plot-x-ticks      (date-ticks)]
       [plot-y-far-ticks  (ticks-scale (plot-y-ticks)
                                       (linear-scale 9/5 32))]
       [plot-y-label      "Temperature (°C)"]
       [plot-y-far-label  "Temperature (°F)"])
    (define data
      (list #((date* 21 17 9 24 11 48161 2 327 #f -18000 0 "EST") 0) #(15 0.6) #(30 9.5) #(45 10.0) #(60 16.6)
            #(75 41.6) #(90 42.7) #(105 65.5) #(120 78.9)
            #(135 78.9) #(150 131.1) #(165 151.1) #(180 176.2)))
    (plot (list
           
           (lines data #:color 2 #:width 2)
           (points data #:color 1 #:line-width 2 #:label "Measured"))
          #:y-min -25 #:x-label "Date"))