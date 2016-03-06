# Final Project Assignment 1: Exploration (FP1)

## My Library: OpenSSL and HTTPS

For the Final Project Exploration Assignment I tested the TCP/SSL racket library: OpenSSL.
I also tried out the racket HTTPS library built on top of SSL.

###OpenSSL Demo
```
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
###Output
```
'auto
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
