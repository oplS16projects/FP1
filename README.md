
## My Library: slideshow/play
My name: Andry Lora


  The libarary that I tried was the slideshow/play libary.The reason I picked this libarary was because as soon as I saw it the idea of going from a simple text document to a slideshow came to mind.At the beggining I read the documentation on how to make simple slides and there were multiple ways of doing so, such as declaring slides one at a time or using an integer n to repeatedly make them.I chose to make one at a time in order to alter them individually and be able to see the changes.
  
  The first slide I used "item" to create multiple list elements and see how the transitioning between items were.Within this same slide I created lines in between each element using "hline" and giving it a width and the spacing between the line and any other objects such as text and other lines this can be seen in figure 1.
  
 <center>Figure 1</center>
  
  ![Alt text](https://github.com/andrylr/FP1/blob/master/slide1.png)
  
  
  For the second slide I looked at the documentation and saw that the current library has element of the pict library which is used in order to change the font size and what font is used in the slideshows.I then used the pict functions to change the font and the positioning of the text.
  
  ```racket 
  #lang slideshow
  (require slideshow/play)
  
  (slide
 #:title "Slide 2"
(text "Lets try some font changes" (cons 'bold 'roman) 50)
(text "diagonal" null 50 (* 2 2))
(text "other diagonal" null 50 (* 2 1)))
```



The next few slides after the second one were used in order to see how the transitions looked based on text sizes using lambda functions.The transitions seemed delayed because it took some time for the text to begin apearing, I tried changing some of the values but it seems that there are specific integers that it would only accept.
  


The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

Ask questions publicly in the email group.

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
