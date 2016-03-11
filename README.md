# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: (require net/tcp-sig)
Write what you did!
Remember that this report must include:

For my exploration I looked at one of the networking libraries, specifically the tcp library which I guess
would be included with `(require net/tcp-sig)` though if you're a windows pleb like me and you just installed racket from the .exe you shouldn't need to download any libraries.  I began by following this tutorial:
http://www.cs.utah.edu/plt/mailarch/plt-scheme-2002/msg00955.html
After completing the tutorial I wrote a small program of my own that used some of the ideas covered in the tutorial but applied them in a slightly different way.

The reason I chose to explore TCP was so I could explore the possibility of building a project that involves networking for example, a card game that allows 2 users to play against each other across a network.  The small program that I wrote after completing the tutorial demonstrates the ability to apply a server side function to a list and return the result.  It's a simple program where the client sends a list to the server, and the server returns the value of (accumulate + 0 lst).  In spite of its simplicity, it demonstrates the manipulation of lists over TCP which can serve as a framework for the networking of a simple game like a card game.

```
;here is the code for the my project
;the main functions used from the tcp library are:
;(tcp-connect hostname port-no) :forms a connection with the specified host through the specified port

;(tcp-listen port-no) :creates a listening server at the port number

;(tcp-accept listener) :accepts a connection from a client waiting on the listener port

;(close-output-port port)
;(close-input-port port) :closes the port - interestingly, these close-port functions are not in the racket 
;doccumentation, I looked it up and found it in several scheme references, but it still works in racket.  
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
  (let ([listener (tcp-listen SERVICE-PORT)])       ;assigns listener to be a tcp-listen call
    (let loop()                                     ;starts a loop so that the server can be called more than once without restarting
      (let-values ([(client->me me->client)         
                  (tcp-accept listener)])           ;assigns client->me and me->client to be tcp-accept calls
       ((lambda (x)                                 ;foldl's the list received from the client and returns it to the client
        (write (foldl + 0 x) me->client))(read client->me))
      (close-output-port me->client)                ;closes the output
      (close-input-port client->me))                ;and closes the input port
      (loop))))                                     ;restarts the loop
      
      ;the client and the server have to be running in two separate instances of Racket. The easiest way to do this (the way I did it)       ;is to open two racket windows and run the server in one window and the client in the other.  This is with the server set as          ;localhost.  The server could be changed to be some other machine by changing the hostname
  
```



* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

Ask questions publicly in the email group.

## How to Prepare and Submit this assignment

1. To start, [**fork** this repository][forking]. 
  2. (This assignment is just one README.md file, so you can edit it right in github)
1. Modify the README.md file and [**commit**][ref-commit] changes to complete your report.
1. Add your racket file to the repository. 
1. Ensure your changes (report in md file, and added rkt file) are committed to your forked repository.
1. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.

## Project Schedule
This is the first part of a larger project. The final project schedule is [here][schedule]

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
