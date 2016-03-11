#lang racket

(require plot)


(plot (function sin (- pi) pi #:label "y = sin(x)"))

(plot (list (axes)
          (function sqr -2 2)
           (function (lambda (x) x) #:color 0 #:style 'dot)
           (inverse sqr -2 2 #:color 3)))


(plot (function sqr 0 5 #:label "y = x ^ 2"))

(define x-point '(0 1 2 3 4 5))
(define y-point '(0 1 4 9 16 25))
(plot (points (map vector x-point y-point) #:color 'red))

(plot (points '(#(0 0) #(1 1) #(2 4) #(3 9) #(4 16) #(5 25)) #:color 'green))

(define x-pointbusiness '(2010 2011 2012 2013 2014 2015))
(define y-pointbusiness '(100 300 200 700 900 800))
(plot (points (map vector x-pointbusiness y-pointbusiness) #:color 'red #:label "Years"))


(plot (points '(#(2010 0) #(2011 100) #(2012 50) #(2013 200)) #:color 'blue #:label "MoneyEarned"))


