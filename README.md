## My Library: 2hdtp/universe and 2hdtp/image (universe relies on image)
My name: Rob Russell

I created a basic framework for a game and experimented with changing game states and creating classes with closures to instantiate game objects that will be updated and their positions used to re-render the scene.

I got some help from the examples and [documentation](https://docs.racket-lang.org/teachpack/2htdpuniverse.html?q=Universe) on the universe library.

I basically started with this example from the documentation above:
```racket
(define (create-UFO-scene height)
  (underlay/xy (rectangle 100 100 "solid" "white") 50 height UFO))
 
(define UFO
  (underlay/align "center"
                  "center"
                  (circle 10 "solid" "green")
                  (rectangle 40 4 "solid" "green")))
 
(animate create-UFO-scene)
```
And then re-wrote and extended it once I read through the docs a little more and understood what was going on.


My basic player class:
```racket
;;player class
(define (player x y speed health)
  (define (dispatch id)
    (cond
      [(equal? id 'x) x]
      [(equal? id 'y) y]
      [(equal? id 'speed) speed]
      [(equal? id 'health) health]
      [(equal? id 'move-left) (set! x (- x 2))]
      [(equal? id 'move-right) (set! x (+ x 2))]
      [(equal? id 'move-down) (set! y (+ y speed))]
      [else (error "PLAYER -- no match for: " id)]))
  dispatch)
```

I also imported an image to use for the player:
```racket
(define bob-sprite (rotate 180 (bitmap "Plane.png")))
```


* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

![Image of my game](http://robdoesweb.com/images/OPL/screenie.jpg)

