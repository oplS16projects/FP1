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

####My basic player class:
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

####I also imported an image to use for the player:
```racket
(define bob-sprite (rotate 180 (bitmap "Plane.png")))
```

####And added some input handling:
```racket
;;handle input
(define (handle-key-down world key)
  (cond
    [(key=? key "left") (bob 'move-left)]
    [(key=? key "right") (bob 'move-right)]
    [else world]
    )
)

(define (handle-key-up world key)
  (cond
    [(key=? key "left") bob]
    [(key=? key "right") bob]
    [else world]
    ))
```
This library makes input handling super easy, and now that I understand the game cycle, I can quickly add a lot more functionality to this.  Currently the ship just goes from the top to the bottom of the screen, and you can press the arrow keys to make it go a little left or a little right as it travels down.  Definitely gonna mess with this some more over the break, finally having fun in Racket!

![Image of my game](http://robdoesweb.com/images/OPL/screenie.jpg)

