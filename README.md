# Final Project Assignment 1: Exploration (FP1)

## My Library: web-server
#### John Kilgo

I tried playing around with the web-server library to try to build a simple application that could handle requests based on URL. The goal would be in the future to return specific information based on the request URL, almost like a REST api, but simpler just through request that spit out html or json, etc. This could potentially be used to produce content for a game or some sort of application that has a backend.

* spent some time fooling around with the example for url-dispatch
* the example is more tailored to using the repl and returning a symbol
* for my example I just returned a html request to generate unique content for a page
* racket servlets/etc are harder than they look

![Example Request](https://raw.githubusercontent.com/john-kilgo/FP1/master/example.png)

```
(define (review-post req p)
  (response/xexpr '(html (head (title "Hello world!"))
          (body (p "Post page")))))
```

The launching of the servlet, passed the function server.

```
(serve/servlet server
               #:port 80               ;set to standard web port
               #:servlet-regexp #rx""  ;catch all requests
               #:command-line? #t      ;don't launch web browser on init
               )
```
