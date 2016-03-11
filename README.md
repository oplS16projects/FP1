## My Library: (2htdp/image)
My name: Brendan Bousquet

 For my first project exploration I decided to take a little blast from the past and relive Computing 4 with some fractals. Specifically Sierpinski fractals using squares and triangles. Then also using some squares, the Koch curve. I found it really awesome how easy this was to do with Racket using the 2htdp/image library.  With all the shapes already defined, all I really had to do was read some documentation on how the procedures like `above`, `beside`, and `rotate` worked and the implementations were easy to realize.
 For example in the sierpinski squares procedure, each recursive call defines an `x` (relative to last square drawn) and a `y` (the new square to be drawn) and uses the `above` and `beside` procedures to draw the sqaures in the fractal pattern. 

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
 `(sierpinski-squares 4)`
 
 ![squares.png](https://github.com/BrendanBousquet/FP1/blob/master/img/squares.png)
 
 The method was obviously similar for sierpinski triangles which used the same two procedure to draw the fractal, just in a slightly different way.
 
 ```racket 
(define (sierpinski n)
  (if (zero? n)
    (triangle 10 "solid" "blue")
    (let ((x (sierpinski (- n 1))))
      (freeze (above x (beside x x))))))
 ```
 `(sierpinski 4)`
 
  ![triangles.png](https://github.com/BrendanBousquet/FP1/blob/master/img/triangles.png)
  
 I used the `freeze` procedure for the sierpinski triangles and square because the documentation claimed that for an image of sub-images it was very efficient.  Fractals seemed like a perfect instance for that. I did not use it for the koch curve becuase it would make the image not show up on the bottom. I assume this is because the nature of the fractal is different from sierpinski and less suited to it's use.
 The koch curve was where I messed around with `rotate`. This was a little tricky to wrap my head around but I had a look at some code of how to produce it in C++ and eventually got something that was pretty solid using `beside/align` to align the squares, despite rotating them.
 
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
 `(koch 3)`
 
  ![koch.png](https://github.com/BrendanBousquet/FP1/blob/master/img/koch.png)
