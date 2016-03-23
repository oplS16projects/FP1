# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: (web-server/insta)
## My Name : Laura Lucaciu
I have played around with this library and provided username, password also displaying messages.
The original code was displaying a username.

This block of code returns a header that instructs the Web browser to request a username and password from the client using Digest authentication with realm as the realm, private-key as the server’s contribution to the nonce, and opaque as the data passed through the client.

```
#lang web-server/insta
(define private-key "private-key")
(define opaque "visible")

(define (start req)
  (match (request->digest-credentials req)
    [#f
     (response
      401 #"Unauthorized" (current-seconds) TEXT/HTML-MIME-TYPE
      (list (make-digest-auth-header
             (format "Basic Authorization: ~a" (gensym))
                    private-key opaque)) void)]
 ```
  The function check is checking whether particular Digest credentials (the second argument of the returned function) are correct
  given the HTTP method provided as the first argument and the secret hash computed by lookup-HA1.
  An username "LauraLuc" and password "pass" is provided.
  
  ```
  (define check (make-check-digest-credentials
                   (password->digest-HA1 (lambda (username LauraLuc) "pass"))))
  ```
  
  The Web Server provides an indirection from application-specific response formats and the internal HTTP response format, response.
  If the user and the password provided matches it passes and will display the heading "OPL Project Spring 2016!"
  Otherwise is returned "No Pass!" and the message and the paragraph.
  ```
  (define pass? (check "GET" alist))
     (response/xexpr
            `(html (head (title "Auth Test"))
                   (body (h1 ,(if pass? "OPL Project Spring 2016!" "No Pass!"))
                         (href "********************************************")
                         (p "Fred Martin " (span ((class "and")) "& Marc Sherman") " ")
                         (href "They are challenging us " (span ((class "us")) "but they rock :)!!!") ".")
                          )))]))
  ```
  
![alt tag](https://raw.githubusercontent.com/LauraLucaciu/FP1/master/UserName.jpg)
![alt tag](https://raw.githubusercontent.com/LauraLucaciu/FP1/master/DisplayMessage.jpg)

