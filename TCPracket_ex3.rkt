#lang racket
;In this example the client tells the server how many tokens are
;needed and the server returns a list with that many tokens.
;this prevents the client from having to make multiple connections

(define SERVICE-PORT 4005)
(define SERVER-HOST "localhost")

(define token-client
  (lambda (how-many-tokens)
    (let-values ([(server->me me->server)
                  (tcp-connect SERVER-HOST SERVICE-PORT)])
      (write how-many-tokens me->server)
      (newline me->server)
      (flush-output me->server)
      (let ([tokens (read server->me)])
        (close-input-port server->me)
        (close-output-port me->server)
        tokens))))

(define server
  (let ([next-token -1])
    (lambda ()
      (let ([listener (tcp-listen SERVICE-PORT)])
        (let server-loop ()
          (let-values ([(client->me me->client)
                        (tcp-accept listener)])
            (write
             (let count-loop ([how-many-more (read client->me)])
               (if (<= how-many-more 0)
                   '()
                   (begin
                     (set! next-token (+ next-token 1))
                     (cons next-token 
                           (count-loop (- how-many-more 1))))))
             me->client)
            (close-output-port me->client)
            (close-input-port client->me)
            (server-loop)))))))