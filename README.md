## My Library: (graphics/turtles)
#####My name: Adam Melle

I used the turtle graphics library to create a recursive pattern function. 
```scheme
(define (recursive-pattern dist angle turns iterations)
  (turn-turtle dist angle turns)
  (if(> iterations 0)
     (recursive-pattern (- dist (* .10 dist)) angle turns (- iterations 1))(home)))
```
The function accepts four parameters, dist, angle, turns, and iterations, and then recursively draws the pattern using the values. 
The function works by calling another function named turn-turtle that accepts parameters, dist, angle, and turns, and then draws a line, turns the turtle depending on angle, and then draws another line. 

```scheme
(define (turn-turtle dist angle turns)
  (draw dist)
  (turn angle)
  (draw dist)
  (if(> turns 0)(turn-turtle (* dist .83) (* .91 angle) (- turns 1))0))
```
This function is called recursively, each time decrementing turns and decaying values by a random amount, until turns is 0. Back inside the recursive-pattern function, an if statement checks the number of iterations and recursively calls the function depending on the value of iterations. The dist parameter is decayed by a random amount(10% in this case) everytime the function is called recursively. Using this function I was able to generate some very interesting fractal like patterns. 
 I also created another function called *save-pattern* that accepts a path and an extension for saving the pattern as an image. 
 
 ```scheme
(define (save-pattern path extension)
  (if(save-turtle-bitmap path extension)(display "save successful")(display "save unsuccessful")))
 ```
My function utilizes the *save-turtle-bitmap* function, but sends back confirmation that the file saved successfully or unsuccessfully. The extension parameter accepts the following values 'png 'jpeg 'xbm 'xpm 'bmp.

Here are some of the patterns I created.

![Image of Yaktocat](https://adam-melle.github.com/images/pattern1.jpg)
![Image of Yaktocat](https://adam-melle.github.com/images/pattern2.jpg)
![Image of Yaktocat](https://adam-melle.github.com/images/pattern3.jpg)
![Image of Yaktocat](https://adam-melle.github.com/images/pattern4.jpg)
