# Final Project Assignment 1: Exploration (FP1)
Josh Blanchette's FP1 report.


START


Hello.  I used an icon library, and mostly messed with stickman.  I first started off with the basics, generating an image.  I then got into more detail, like changing the size and color of the images to my liking.  The final thing I did was produce a stickman in a list to make it look like he is running.  So, I generated a big stickman, and made it look like the running stickman was running away from him.  I also added a title saying RUN STICKMAN! RUN!

The code is straightforward, where as the syntax is easy to understand.  Customizing the stickman reminded me of CSS properties we used back in GUI 1 and 2.  The imports I used in my code are copied below.

(require images/icons/style)

(require images/icons/control) 

(require images/icons/stickman)  ;this guy is my favorite 

(require images/icons/symbol)

And here is the rest of the code I wrote.  I also attached the racket file to this repository.

(step-icon #:color halt-icon-color #:height 32)

(running-stickman-icon 0.9 #:height 50
                         #:body-color "blue"
                         #:arm-color "red"
                         #:head-color "blue")

(text-icon "RUN STICKMAN! RUN! IT'S STICKMAN GODZILLA!!")

(standing-stickman-icon #:height 150)  ;HE'S HUGE

(for/list ((t (in-range 0 1 1/12)))
  (running-stickman-icon t #:height 40)) ;He's running away from giant stickman
  



![alt tag](https://github.com/JoshB53/FP1/blob/master/FP1Image.jpg)


