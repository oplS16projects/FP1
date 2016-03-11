#lang racket
;In this example, the server listens for a number of tokens and
;creates/returns a list of that many consecutive numbers, starting with the
;next token after the last token to be called by the server, for example
;>(token-client 5)
;'(0 1 2 3 4)
;>(token-client 5)
;'(5 6 7 8 9)

;There is a problem with this implementation: the connection between the
;client and server is re-established each loop, which is bad for 2 reasons
;1.It wastes a lot of resources 2.Another client could connect in between
;and pick up one of the numbers so instead of getting '(0 1 2 3 4) you might
;receive '(0 1 3 5 6) from the server
;in the next example, a steady dialogue is created between the server and
;client to solve this issue.

(define SERVICE-PORT 2005)
(define SERVER-HOST "localhost")

(define token-client
  (lambda (how-many-tokens)
    (if (<= how-many-tokens 0)
        '()
        (let-values ([(server->me me->server)
                      (tcp-connect SERVER-HOST SERVICE-PORT)])
          (let ([token (read server->me)])
            (close-input-port server->me)
            (close-output-port me->server)
            (cons token
                  (token-client (- how-many-tokens 1))))))))

(define server
  (let ([next-token -1])
    (lambda ()
      (let ([listener (tcp-listen SERVICE-PORT)]) ;note that the listener
        ;is created outside of the loop.  Only one listener is created,
        ;the listener can receive multiple connections
        (let loop ()
          (let-values ([(client->me me->client)
                        (tcp-accept listener)])
            (set! next-token (+ next-token 1))
            (close-input-port client->me)
            (write next-token me->client)
            (close-output-port me->client))
          (loop))))))