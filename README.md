# Final Project Assignment 1: Exploration (FP1)

## My Library: (slideshow)
My name: Martin Rudzki

The reason I picked this library was to be able to present my project proposal to the class using racket library. I also have another project presentation in two weeks that I would like to use racket again for that. There is something cool about presenting a racket project using a racket library!

The first silde that comes up is a slow transtion of text welcoming people to the project. The second thing I was fooling around with was adding a picture. I then create a couple of geberic slide with the main heading staying the same as the slides go to a new page. The last thing I did with my slides was that every time you click it would bring down another bullet point.

I am going to go over some of the code below:

    (slide
     #:title "Example"
      (item "First point")
     'next
     (subitem "Second sub item") 
     'next
      'alts 
     ;list of items and you can insert the keyword next
     (list
     (list (item "Third point")'next
     	  (item "Fourth point in list")))
 	'next
	 (item "Fifth step"))


I thought the text fading in was pretty neat but my favorite code part would have to be setting up the bullet point through list's, like below.

    (slide ............
     (list
      (list (item "Third point")'next
      (item "Fourth point in list"))) ......


What I liked most about it was creating a list of items and how simple and alegant the code looked. Compared to the following.

    (slide................
     (item "First point")
     'next
     (subitem "Second sub item")
     'next .......

Output:

<img src="output.jpg">

 
 
 










