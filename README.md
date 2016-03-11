## My Library: (2htdp/image)
My name: Brendan Bousquet

 For my first project exploration I decided to take a little blast from the past and relive Computing 4 with some fractals. Specifically sierpinski fractals using squares and triangles. Then also using some squares, the Koch curve. I found it really awesome how easy this was to do with Racket using the 2htdp/image library.  With all the shapes already defined, all I really had to do was read some documentation on how the procedures like 'above', 'beside', and 'rotate' worked and the implementations were easy to realize.
 For example in the sierpinski squares procedure, each recursive call defines an x (relative to last square drawn) and a y (the new square to be drawn) and uses the 'above' and 'beside' procedures to draw the sqaures in the fractal pattern. 

```racket 
(define (sierpinski-squares n)
  (if (zero? n)
      (square 5 "solid" "black")
      (local ((define x (sierpinski-squares (- n 1)))
              (define y (square (image-width x) "solid" "yellow")))
        (freeze (above (beside x x x)
                       (beside x y x)
                       (beside x x x))))))
 ```
 ![squares.png](BrendanBousquet.github.com/FP1/img/squares.png)
 The method was obviously similar for sierpinski triangles which used the same two procedure to draw the fractal, just in a slightly different way.
 
 ```racket 
(define (sierpinski n)
  (if (zero? n)
    (triangle 10 "solid" "blue")
    (let ((x (sierpinski (- n 1))))
      (freeze (above x (beside x x))))))
 ```
 I used the 'freeze' procedure for the sierpinski triangles and square because the documentation claimed that for an image of sub-images it was very efficient.  Fractals seemed like a perfect instance for that. I did not use it for the koch curve becuase it would make the image not show up on the bottom. I assume this is because the nature of the fractal is different from sierpinski and less suited to it's use.
 The koch curve was where I messed around with 'rotate'. This was a little tricky to wrap my head around but I had a look at some code of how to produce it in C++ and eventually got something that was pretty good.
 
  ```racket 
(define (koch n)
  (if (zero? n)
      (square 10 "solid" "red")
      (local ((define smaller (koch (- n 1))))
        (beside/align "bottom"
                   smaller
                   (rotate 60 smaller)
                   (rotate -60 smaller)
                   smaller))))
 ```
Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

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
