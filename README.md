# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016


## My Library: data/ring-buffer
My name: Patrick Donegan

Write what you did!
Remember that this report must include:

I implemented a ring buffer in Racket and played around with it.
I created it and made sure it was current created with this code:

```
#lang racket
(require data/ring-buffer)

(define rb (empty-ring-buffer 6))

(ring-buffer-length rb)
(ring-buffer? rb)
```
This outputted, 6 and #t respectively.

I then loaded the ring buffer up with values to fill capacity and printed the contents of 
the ring buffer which was stored as a list, I then loaded another value in which bumped the 
first item out and and stuck the new item at the end.

```
(ring-buffer-push! rb 1)
(ring-buffer-push! rb 2)
(ring-buffer-push! rb 3)
(ring-buffer-push! rb 4)
(ring-buffer-push! rb 5)
(ring-buffer-push! rb 6)
(for/list ([v rb]) v)
(ring-buffer-push! rb 7)
(for/list ([v rb]) v)

```
here is an image of the outputs.




![output]
(http://i.imgur.com/20IBgDU.png)



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
