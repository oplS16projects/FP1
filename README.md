# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: (web-server/insta)
## My Name : Laura Lucaciu
Web Server provides a way to quickly configure and start a servlet 
Constructs a function that checks whether particular Digest credentials (the second argument of the returned function) are correct given the HTTP method provided as the first argument and the secret hash computed by lookup-HA1.
I have played around providing username and password and displaying messages.
Planning to look on adding images.

```
(define (start req)
  (match (request->digest-credentials req)
    [#f
     (response
      401 #"Unauthorized" (current-seconds) TEXT/HTML-MIME-TYPE
      (list (make-digest-auth-header
             (format "Basic Authorization: ~a" (gensym))
                    private-key opaque)) void)]
    [alist
     (define check (make-check-digest-credentials
                   (password->digest-HA1 (lambda (username LauraLuc) "pass"))))
 ```
                   

![alt tag](https://raw.githubusercontent.com/LauraLucaciu/FP1/master/DisplayMessage.jpg)
![alt tag](https://raw.githubusercontent.com/LauraLucaciu/FP1/master/UserName.jpg)

