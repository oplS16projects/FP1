
## My Library: (teachpacks/racket-turtle)
My name: Huy Huynh
 The racket library that I used was the Turtle Racket library found under teachpacks. I found this library and thought it was very interesting being able to create different kind of shapes and patterns. After reading the commands that are used in this library I began to follow some of their tutorials on how to make shapes like a square. I then went on to make a recursive function that would recursively call itself a specified amount of times and would draw the shape or pattern that I wanted. 
```racket
#lang racket

 (require teachpacks/racket-turtle)
(define (recursive-pattern1 y x z times) 
  (if (< times 0) empty
      (append (list (forward x )(turn-left y)(turn-right z))
              (recursive-pattern1   y  (+ x 2) z (- times 1)))))
```
 What this function is doing is it is first taking in four arguments, y x z and times. Essentially this function is basically first checking if the times(acts as a counter) is 0, if it is then return empty if not append onto the list. In the list there is a forward procedure that moves the turtle forward a certain distance. There is a turn-left and turn-right procedure that does literally what their named, turning the turtle. I then recursively call this function but altering just the turn-left procedure so each time the function is called the same pattern is drawn but in a different position to create a pattern. I then had another function which is just setting up the shape that I want initially and then calling the recursive-pattern create the pattern.
 ```racket 
 (define square
  (list
   (change-pen-size 1)
   (change-color (list "red" "green" "blue" "yellow"))
   (change-bg-color "grey")
   (recursive-pattern1 100 90 10 90)))
``` 
 In this function I practiced using more procedures available like change-color, change-bg-color and the pen(line) size. 
Here are some of patterns that I was able to create, the second one I happened to stumble on upon while I was fiddling with specific values, I ended up just recursively drawing triangles and moving them to the left slightly each time.

![Alt Text](https://github.com/HuyH0114/FP1/blob/master/Square-pattern.PNG)
![Alt Text](https://github.com/HuyH0114/FP1/blob/master/star-pattern.PNG)



<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
