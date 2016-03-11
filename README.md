# Final Project Assignment 1: Exploration (FP1)
Cameron Oliver

## My Library: (require net/tcp-sig)

For my exploration I looked at one of the networking libraries, specifically the tcp library which I guess
would be included with `(require net/tcp-sig)` though if you're a windows pleb like me and you just installed racket from the .exe you shouldn't need to download any libraries.  I began by following this tutorial:
http://www.cs.utah.edu/plt/mailarch/plt-scheme-2002/msg00955.html
After completing the tutorial I wrote a small program of my own that used some of the ideas covered in the tutorial but applied them in a slightly different way.

The reason I chose to explore TCP was so I could explore the possibility of building a project that involves networking for example, a card game that allows users to play against each other across a network.  The small program that I wrote after completing the tutorial demonstrates the ability to apply a server side function to a list and return the result.  It's a simple program where the client sends a list to the server, and the server returns the value of (accumulate + 0 lst).  In spite of its simplicity, it demonstrates the manipulation of lists over TCP which can serve as a framework for a network based implementation of something like a card game.

```
;here is the code for the my project
;the main functions used from the tcp library are:
;(tcp-connect hostname port-no) :forms a connection with the specified host through the specified port

;(tcp-listen port-no) :creates a listening server at the port number

;(tcp-accept listener) :accepts a connection from a client waiting on the listener port

;(close-output-port port)
;(close-input-port port) :closes the port - interestingly, these close-port functions are not in the racket 
;doccumentation, I looked it up and found them in several scheme references, but they still works in racket.  
;I think the equivalent racket library function would be (tcp-close listener)

;read and write are not part of the tcp library but since we haven't gone over them I'll mention them
;basically write outputs a message in such a way that when it is read with read it will be returned in its
;original form
;so (read (write 'x)) would return 'x

#lang racket

(define SERVICE-PORT 2000)
(define SERVER-HOST "localhost")

(define (client lst)
  (let-values ([(server->me me->server)
                (tcp-connect SERVER-HOST SERVICE-PORT)]) ;assigns server->me and me->server to be tcp-connect calls
    (write lst me->server)                               ;sends the list to the server
    (close-output-port me->server)                       ;closes the output from the client to the server
    (let ([response (read server->me)])                  ;the message received back from the server is named "response"
      (display response) (newline)                       ;response is displayed followed by a newline
      (close-input-port server->me))))                   ;closes the input from the server to the client

(define (server)
  (let ([listener (tcp-listen SERVICE-PORT)]) ;assigns listener to be a tcp-listen call
    (let loop()                               ;starts a loop so that the server can be called more than once without restarting
      (let-values ([(client->me me->client)         
                  (tcp-accept listener)])     ;assigns client->me and me->client to be tcp-accept calls
       ((lambda (x)                           ;foldl's the list received from the client and returns it to the client
        (write (foldl + 0 x) me->client))(read client->me))
      (close-output-port me->client)          ;closes the output
      (close-input-port client->me))          ;and closes the input port
      (loop))))                               ;restarts the loop
      
      ;the client and the server have to be running in two separate instances of Racket. 
      ;The easiest way to do this (the way I did it) is to open two racket windows and run 
      ;the server in one window and the client in the other. This is with the server set as          
      ;localhost. The server could be changed to be some other machine by changing the hostname
  
```
##Code Output:

###First Tutorial Example:
-client sends 'ping to the server
-server responds with 'pong (server can only respond once, then it must be restarted)
![Alt Text](https://github.com/C4m0/FP1/blob/master/TCPex1.jpg)
###Second Tutorial Example:
-client sends a number
-server returns that number of tokens, beginning with the token after the last token to be handed out
![Alt Text](https://github.com/C4m0/FP1/blob/master/TCPex2.jpg)
###Experment Program:
-described above in code (server sums a list)
![Alt Text](https://github.com/C4m0/FP1/blob/master/TCPexperiment.jpg)

