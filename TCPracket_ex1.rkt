#lang racket
;This example contains a very basic client and server which communicate over
;TCP.  This is written to run on a single machine (both server and client)
;I am doing this with 2 racket windows (1 for server and 1 for client). All
;of the proceeding examples are handled in a similar fashion.

;To adapt any of these examples to communicate with an actual server, the
;value of SERVER-HOST would just need to be changed to the hostname or ip
;of the server (this is just changing one of the 2 required inputs to
;tcp-connect: hostname and port-no

;Running (server) with this example creates a server that listens on port 2000,
;if it receives the message 'ping it respons with the message 'pong, otherwise
;it responds with 'who-are-you?
;THIS SERVER CAN ONLY READ LISTEN TO A SINGLE CONNECTION, after that you have
;to press run again to get anything else out of the server.

;Running (client) creates a client which opens a connection with the server
;on port 2000 and sends the message 'ping, then listens for a response
;and upon receiving a response terminates the connection.

(define SERVICE-PORT 2000)
(define SERVER-HOST "localhost")

(define (client)
  (let-values ([(server->me me->server)
                (tcp-connect SERVER-HOST SERVICE-PORT)])
    (write 'ping me->server)
    (close-output-port me->server)
    (let ([response (read server->me)])
      (display response) (newline)
      (close-input-port server->me))))

(define (server)
    (let ([listener (tcp-listen SERVICE-PORT)])
      (let-values ([(client->me me->client)
                    (tcp-accept listener)])
	(if (eq? (read client->me) 'ping)
            (write 'pong me->client)
            (write 'who-are-you? me->client))
        (close-output-port me->client)
        (close-input-port client->me))))