#lang racket
(require images/icons/control)
(require images/icons/style)
(require images/icons/stickman)
(require images/icons/misc)
(require images/icons/symbol)

(text-icon "Can He Make It out?"
             #:color "green" #:height 24)

(list
(step-icon #:color "stone" #:height 32)

(running-stickman-icon 0.9 #:height 32
                       #:head-color "white"
                       #:body-color "tan"
                       #:arm-color "brown")

(step-back-icon #:color "stone" #:height 32)

)
