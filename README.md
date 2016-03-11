# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

Ryan Cauble

## My Library: pict

The first thing i needed to figure out was how to get the library working.
To do this i needed to add #lang slideshow and (require pict/balloon) like this:
```
#lang slideshow

(require pict/balloon)
```
This took a little research and reading since I did not know that the #lang had to
be changed. Once I figured this out I started reading the libraries functions and 
learned about their capabilities.

The first function I decided to play around with was the "standard-fish" function. 
This function creates a pict of a fish that can be manipulated by changing certain
parameters. 
```
(define fishy2
     (standard-fish	100        ;; width	 	 	 	 
 	 	        50	                ;; height	 	 	 
 	 	#:direction 'right  	 	 	 	 
 	 	#:color "blue"	 	 	 	 
 	 	#:eye-color "red"	 	 	 	 
 	 	#:open-mouth #t)  ;; #t, #f, or between 0 and 1
)
```
The open mouth parameter can be a value between 0 (closed) and 1 (open). 
Values between 0 and 1 will make the mouth open between those extremes.


![screen1](https://cloud.githubusercontent.com/assets/17748575/13704660/ffe0dc9a-e76a-11e5-93f7-fadcea4292be.png)




Another cool function is the "pin-balloon" function. This creates a talking bubble which can be combined with 
another image like my fish. The result is a fish that looks like it is talking or thinking about something. 

![screen2](https://cloud.githubusercontent.com/assets/17748575/13705038/fb24ad74-e76c-11e5-940c-262526c4eb8f.png)



Other pict functions exist that let you make things like a computer, cloud, file-icon, thermometer, or 
emoji type faces. Below you will see how to make a computer:

```
(define computer1
(desktop-machine 1 '(plt binary))
)

```
![screen3](https://cloud.githubusercontent.com/assets/17748575/13705440/e1de2f82-e76e-11e5-9a7a-92c59e464657.png)







This library would be good to use if I wanted to tell a story that included pictures or make some 
kind of game. So lets see how this can work and tell a littel story.


![screen4](https://cloud.githubusercontent.com/assets/17748575/13705655/c3b9eb76-e76f-11e5-8c7a-03a8cc7f8986.png)


As you can see I am not much of a story teller. So the last thing I will drive around a little is the tree functions.

This is a recursive function that makes a tree with a specified number of layers:

```

(define (complete layers) 
    (cond 
      [(zero? layers) #f] 
      [else (define s (complete (- layers 1))) 
            (tree-layout s s)]))

```
With this code you would use the command `(naive-layered (complete 3))` which says I want a tree of 3 layers.
See example below:

![screen5](https://cloud.githubusercontent.com/assets/17748575/13707509/00e42cf2-e778-11e5-924f-f9482e1172fc.png)






