#lang racket
(require net/url)
(require net/url-connect)

; This racket library allows you to configure how the under lying SSL
; is setup. To do this your would change the current-https-protocol.
; The default is 'auto.
(current-https-protocol)
; Create and execute and HTTPS request with <URL>
; impure port will give HTTP 
(define port (get-impure-port (string->url "https://www.google.com")))
; Display entire HTTP response headers along with the HTTP body
(display-pure-port port)

(require openssl)
ssl-available? ;verifies OpenSSl is installed

; Create SSL TCP socket on <hostname> <port>
; Return value is an input port, and output port
(define-values (in out) (ssl-connect "localhost" 9876))  

; Push plaintext into SSL socket to be converted to cyphertext
(write "test message body" out)
; Flush the TCP buffer
(flush-output out)
; Read in data from the server
(read in)

; Close both the input and output ports, end the TCP connection
(close-input-port in)
(close-output-port out)


;(define the-listener (ssl-listen 9876))

;(ssl-load-certificate-chain! the-listener ;pathname)
;(ssl-load-private-key! the-listener ;pathname)

;(define-values (in out) (ssl-accept the-listener))
;(displayln (read in))
;(tcp-close the-listener)