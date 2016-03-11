
## My Library: Turtle Graphics
Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

#Narrative:
I used the turtle graphics library. At first I familiarized myself with some basic functions such as move, draw, erase, and turn. After figuring out how to navigate the turtle, I delved into more complex functions such as split (which clones a turtle), and regular-poly which creates a certain number of n-sided shapes. My favorite function was neato, which is the main source of the cool designs.

#Highlights:
Examples of cloning the turtles (split), and giving them drawing instructions. The two arguments of draw-offset are the amount of space to move the turtle horizontally and vertically, respectively. The argument to split makes it so the cloned turtle faces the original in a right angle.
(draw-offset 240 250)
 (split (turn/radians (/ pi 2)))
 (split (turn/radians (/ pi 2)))
 (draw-offset -100 -200)
 
 These two lines are the main cause of the aesthetic appeal to my file. Regular polys drew squares with a radius of 2, and neato did the really complex circular designs.
(regular-polys 4 2)
 (neato)

The last function I thought was neat was dotted-lines, which does as its name says - makes dotted lines emanate through each respective turtle. 
(dotted-lines)

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.



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
