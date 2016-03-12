#lang racket
(require web-server/servlet
         web-server/servlet-env
         web-server/dispatch)

;; Server
(define (server req)
  (dispatch req))

;; Dispatch example
(define-values (dispatch url)
  (dispatch-rules
   [("posts" (string-arg)) review-post]
   [("app") default]))

;; Request handlers
(define (default req)
  (response/xexpr
   '(html (head (title "Main request"))
          (body (h2 "This is a sample request of /app")))))

(define (review-post req p)
  (response/xexpr '(html (head (title "Hello world!"))
          (body (p "Post page")))))


(serve/servlet server
               #:port 80               ;set to standard web port
               #:servlet-regexp #rx""  ;catch all requests
               #:command-line? #t      ;don't launch web browser on init
               )
