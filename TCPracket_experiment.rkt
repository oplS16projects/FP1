#lang racket
;The 3 examples are covered in the tutorial, this is a separate
;code that I did as an experiment to try to apply what I learned
;from the tutorial.  It is a simple application, it just
;takes a list, and does an additive accumulation
;in other words, the client can send a list
;(client lst)
;annd the server will return the result of (foldr + 0 lst)
;so (client '(1 2 3 4 5)
;returns 15

(define SERVICE-PORT 2000)
(define SERVER-HOST "localhost")

(define (client lst)
  (let-values ([(server->me me->server)
                (tcp-connect SERVER-HOST SERVICE-PORT)])
    (write lst me->server)
    (close-output-port me->server)
    (let ([response (read server->me)])
      (display response) (newline)
      (close-input-port server->me))))

(define (server)
  (let ([listener (tcp-listen SERVICE-PORT)])
    (let loop()
      (let-values ([(client->me me->client)
                  (tcp-accept listener)])
       ((lambda (x) (write (foldl + 0 x) me->client))(read client->me))
      (close-output-port me->client)
      (close-input-port client->me))
      (loop))))
  