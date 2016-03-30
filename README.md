# Final Project Assignment 1: Exploration (FP1)

## My Library: Slideshow

For FP1 I used the slideshow library. I created 5 Slides in total that show some of the built in functions of the library. 

I followed along with the racket docs for this one as I wanted to learn the very basics of this library. 

I created my first slide with the following code. 
```
(define myslide (slide
 #:title "I Made a slideshow in Racket"
 (t "this is my racket show")))
```
The Output Can Be Seen Below:
![slide1](https://github.com/nickfinocchiaro/FP1/blob/master/slide1.png)

The Second Slide I Created Showed off a simple implimentation of italics, bold, and bold italic fonts. 
The Code Below Shows my Implementation:
```
(define mysecondslide (slide
  #:title "second demo slide"
  (it "we can write italic text")
  (bt "we can write bold text")
  (bit "we can also do both")))
```

The Output is Below:
![slide2](https://github.com/nickfinocchiaro/FP1/blob/master/slide2.png)

The Third Slide I created came straight from section 1.2 of the [slideshow documentation][slideshow-doc]. I took the implementation of
the demo code initially to observe the behavior of the slide with the code as is, seen below:
```
(slide
 #:title "Example"
 (item "First step")
 'next
 (item "Second step")
 'next
 'alts
 (list (list (item "Tentative third step")
             'next
             (item "This isn't working... back up"))
       (list (item "Third step that works")))
 'next
 (item "Fourth step"))
```
I then changed the output text below to my own to explain how we can cycle through different items in the same bullet point. Seen Below:
```
(define myThirdslide (slide
 #:title "Display Bullet points"
 (item "We Can Add Bullets")
 'next
 (item "And Then view them sequencially")
 'next
 'alts
 (list (list (item "Like this")
             'next
             (item "Now Replace This bullet"))
       (list (item "With a different one")
             'next
             (item "and another one"))
       (list (item "BECAUSE")))
 'next
 (item "indeciveness is a way of life")))
```
Like I stated above, I was trying to learn how 'next and 'args worked on different elements in the slide.
```
'next
```
Naturally next brings us to the next item. 
```
`args 
```
Where 'args can be used in conjunction with 'next that uses a list to cycle through lists of items in that list. 
Output of my final code for this slide can be found below:
![slide3](https://github.com/nickfinocchiaro/FP1/blob/master/slide3.png)

The fourth Slide Shows off procedure 
```
bitmap
```
bitmap takes a path of an image and creates a pict. 
I used a picture of 2 Chainz because everyone loves 2 Chainz. 
See Below:
![slide4](https://github.com/nickfinocchiaro/FP1/blob/master/slide4.png)



## How to Prepare and Submit this assignment

1. To start, [**fork** this repository][forking]. 
  2. (This assignment is just one README.md file, so you can edit it right in github)
1. Modify the README.md file and [**commit**][ref-commit] changes to complete your report.
1. Add your racket file to the repository. 
1. Ensure your changes (report in md file, and added rkt file) are committed to your forked repository.
1. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.

## Project Schedule
This is the first part of a larger project. The final project schedule is [here][schedule]

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
[slideshow-doc]: https://docs.racket-lang.org/slideshow/Creating_Slide_Presentations.html?q=slideshow
