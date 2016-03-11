#lang racket
(require images/icons/style)
(require images/icons/control)
(require images/icons/stickman)  ;this guy is my favorite 
(require images/icons/symbol)

(step-icon #:color halt-icon-color #:height 32)

(running-stickman-icon 0.9 #:height 50
                         #:body-color "blue"
                         #:arm-color "red"
                         #:head-color "blue")

(text-icon "RUN STICKMAN! RUN! IT'S STICKMAN GODZILLA!!")

(standing-stickman-icon #:height 150)  ;HE'S HUGE

(for/list ((t (in-range 0 1 1/12)))
  (running-stickman-icon t #:height 40)) ;He's running away from giant stickman