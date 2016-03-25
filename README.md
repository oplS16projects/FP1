# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016


## My Library: (Plot Graph Plotting)
My name: Tyrone Turrell

I tried to use semi-persistent Matrices
and semi-persistant Vectors
and dbm all without any luck--

So I tried Browser: Simple HTML Rendering
 and it finally did not give an error
 I don't know what any of the rest of the page was for so I moved on.
`(require browser )`

 I next tried Web Applications in Racket

 I read the intro which says to use Stateless Servlets

 I began 1 Running Web Servlets

 But `#lang web/server/insta` didn't work until I got rid of #lang racket
```racket
#lang web-server/insta
 
 (define (start req)
 (response/xexpr
`(html (head (title "Hello world!"))
 (body (p "Hey out there!")))))
 ```

It opened a new tab with Hello world as a title and Hey out there! as text

DrRacket used a serve/servlet to start a new server that uses the start function
as the servlet.

 ```racket 
 (no-web-browser)


Your Web application is running at http://localhost:55482.
Stop this program at any time to terminate the Web Server.

Web Server stopped.
```

tried this`(static-files-path "C:\Users\Tyrone\Pictures\solo.jpg")` didn't work
so I kept reading

`(require web-server/servlet-env)`

 It is suggested that the web-server/servlet-env is somehow beter and more
 customizabile then an example is given that reproduces the above action within
 the `#lang racket` and not` #lang web-server/insta`
 ```racket
 #lang racket
 (require web-server/servlet
       web-server/servlet-env)
 
(define (start req)
  (response/xexpr
  `(html (head (title "Hello world!"))
         (body (p "Hey out there!")))))
 ```
`(serve/servlet start)` also it is shown that `serve/servlet my-app )` works

the port is customizable   `(serve/servlet my-app #:port 808)` and
 external machines `(serve/servlet my-app #:listen-ip #f)`
```racket
 the default URO for this servlet is
 "http://localhost:8000/servlets/standalone.rkt" but can be changed
 "http://localhost:8000/hello.rkt
```
 style sheets can be used 
 ```racket
 (serve/servlet my-app #:extra-files-paths
                                                (list
                                                (build-path "/Users/jay/Desktop")))
                                                ```

To do without DrRacket banner
```racket
#lang racket
(require web-server/servlet
         web-server/servlet-env)
 
(define (my-app req)
  (response/xexpr
   `(html (head (title "Hello world!"))
         (body (p "Hey out there!")))))
 
(serve/servlet my-app)
(serve/servlet my-app #:command-line? #t )
```
 a generic style.css file was added
```racket
(serve/servlet my-app
               #:extra-files-paths
              (list
               (build-path "C:/Users/Tyrone/Documents/HTML/opl/index.css")))
```
 which didn't do anything

 It says some stuff about stateless servlet and jumps to Full API
A large set-up of A Full API and an explanation of each part
 I am now lost with a discussion of servers and API stuff

 I move on to 3 Stateless Servlets as that is what is suggested

The first example is tried
```racket
#lang web-server
 (require web-server/http)
 (provide interface-version stuffer start)
(define interface-version 'stateless)
(define stuffer
  (stuffer-chain
   serialize-stuffer
   (md5-stuffer (build-path (find-system-path 'home-dir) ".urls"))))
(define (start req)
  (response/xexpr
   `(html (body (h2 "Look ma, no state!")))))
```
 Everything in the file is printed and then the not much else occurs
 I don't know anything about the rest of Stateless Servlets-- or HTTP or
 anything else in this file--- there wasn't much I understood so I'll try
 another one

 I moved to 3D Model Library
 immediately I had to learn how to use planet or to put it in racket staticly
but could not figure that out

 I tried Data: Data Structures
`(require data)` which could not be used

I moved to Math Library
`(require math/matrix)`

The explanation of matrices in this library begin-- but I don't know enough
to follow

I started over.

HTML: Parsing Library

`(require html)`  but again I don't know anything about this

I stumbled upon 2.4 Worlds and the Universe "universe.rkt"
`(require 2htdp/universe)`

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
 But this seamed to be based on scheme rather than Dr Racket

 Tried package manager and updated catalog
 Retried semi-persistent matrices
 `(build-matrix 2 3 3 )`
```racket

build-matrix: contract violation
  expected: a procedure
  given: 3
  in: the 3rd argument of
      (->
       Integer
       Integer
       (-> any/c any/c any/c)
       (struct/c
        Array
       (vectorof Index)
        any/c
        (box/c (or/c #f #t))
        (-> any)
        (-> (vectorof Index) any)))
  contract from: 
      <pkgs>/math-lib/math/private/matrix/matrix-constructors.rkt
  blaming: C:\Users\Tyrone\Desktop\spring_2016\prog_lang\project\ex1.rkt
   (assuming the contract is correct)
  at: <pkgs>/math-lib/math/private/matrix/matrix-constructors.rkt:17.9
(require data/spvector)
```
 I didn't get any where with this either.
Plot Graph Plotting
   `(require plot )`
   `(plot (function sin (- pi) pi #:label "y = sin(x )"))`
 which worked out fine

![Plot1] (https://github.com/tturrell/FP1/blob/master/1.jpg)



```racket
(plot3d (surface3d (λ (x y) (* (cos x) (sin y)))
                     (- pi) pi (- pi) pi)
          #:title "An R × R → R function"
          #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)")
 ```
![Plot2](https://github.com/tturrell/FP1/blob/master/2.jpg)
 Which also seemed to work as expected
 ```racket
(plot3d (polar3d (λ (θ ρ) 1) #:color 2 #:line-style 'transparent)
          #:altitude 25)
```
![Plot3](https://github.com/tturrell/FP1/blob/master/3.jpg)



## Project Schedule
This is the first part of a larger project. The final project schedule is [here][schedule]
)
<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
