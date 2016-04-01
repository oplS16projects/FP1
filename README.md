# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: Icon
My name: Joel Cruz

link to documentation for library: 
http://docs.racket-lang.org/images/Icons.html#%28def._%28%28lib._images%2Ficons%2Fstyle..rkt%29._run-icon-color%29%29

I chose to use the Icon library because it had the best documentation. I can see this library being applied to many different libraries but cant stand alone, since it has no functionality. I first read the documentation for the Icon library and slowly started testing the example code they gave. I expiramented by modifying the color and height of the icons. I later started using the methods they had for each image, such as modifying the meterial, outline and shading of the images.

```
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
```
![Image of Example Code](http://i795.photobucket.com/albums/yy234/joel24478/Screen%20Shot%202016-03-11%20at%202.29.37%20PM_zpsh6lzu3ql.png)

This code snippet is very simple and just prints these icons to the output. It gets images from the library which i specified and then i sets the icon's height and color.


