# Final Project Assignment 1: Exploration (FP1)
Christian Everett
## My Library: OpenSSL and HTTPS

For the Final Project Exploration Assignment I explored two link encryption librarys the TCP/SSL racket library: OpenSSL.
I also tried out the racket HTTPS library built on top of SSL.

In the OpenSSL demo I verifiy OpenSSL is installed, 
create an SSL socket with localhost write a message and then receive a message back.

###OpenSSL Demo
```racket
#lang racket

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
```

In the HTTPS demo I display the HTTPS configurtion, 
then create an impure port to request a page from www.google.com.
The response is printed.

###HTTPS Demo
```
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
```
###Output from HTTPS demo
```
'auto <- current-https-protocol setting

HTTP/1.1 200 OK

Date: Sun, 06 Mar 2016 23:17:32 GMT

Expires: -1

Cache-Control: private, max-age=0

Content-Type: text/html; charset=ISO-8859-1

P3P: CP="This is not a P3P policy! See https://www.google.com/support/accounts/answer/151657?hl=en for more info."

Server: gws

X-XSS-Protection: 1; mode=block

X-Frame-Options: SAMEORIGIN

Set-Cookie: NID=77=nudLr8RxMSLLW_QL6i6rZPu18rb-ytUydK-5X-t68_oh60oa6lJ8P2pjUgUj30TS6GAFbbSSVru41RfPYWWDn-3x-85AxHqFpIOFNZaY-y4306lgEU-m4tgS8ejF1xAfr7OlXCQs_5aHZg; expires=Mon, 05-Sep-2016 23:17:32 GMT; path=/; domain=.google.com; HttpOnly

Alternate-Protocol: 443:quic,p=1

Alt-Svc: quic="www.google.com:443"; ma=2592000; v="30,29,28,27,26,25",quic=":443"; ma=2592000; v="30,29,28,27,26,25"

Accept-Ranges: none

Vary: Accept-Encoding

Transfer-Encoding: chunked


<!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="en"><head>
.
.
.
.
</body></html>
```

###A link that satisfies confidentiality, integrity, authentication (SSL).
![Alt text](https://github.com/ChristianEverett/FP1/blob/master/README.PNG "title")
