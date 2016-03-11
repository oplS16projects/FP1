# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016


## My Library:HTML-template
My name: Behailu Tekletsadik

Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!


 So the purpose of this library is to convert Racket commands into an HTML webpage.
 This is really cool because instead of hacking around aimlessly with racket with something like this:
 ```
 <html><head><title>HTML Stuff</title></head><body><h1>HTML Stuff</h1><p>Kittens claw.<br>I screamed</p></body></html>
```

now turns to this:
```
#lang racket

(require html-template)

(define (write-essay my-title)
  (html-template
   (html (head (title (% my-title)))
         (body (h1 (% my-title))
               (p "Kittens claw."
                  (br)
                  "I screamed")))))
                  


(write-essay "HTML Stuff")

```


![myimage-alt-tag](file:///home/behailu/Pictures/Screenshot%20from%202016-03-11%2015-58-19.png)
I can actually have structured function based language which makes it a lot easier to sort webpages and work with realtime modifiable webpages. It may be more code, but it's much more readable. Especially since HTML is one of those languages where its easy to get lost in, a racket format is appreciated.
From this, I can change color of text, resize, move, animate, add images and html objects of various natures to my project.
Unfortunately documentation is completely lacking. Could only find one tutorial.
 

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
