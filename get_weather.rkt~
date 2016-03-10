#lang racket

(require net/url
         hostname
         json)

#|

URLs to the libraries I'm using:

Hostname (to get IP address): https://docs.racket-lang.org/hostname/index.html
JSON (to parse JSON): http://docs.racket-lang.org/json/index.html
net/url (making requests): https://docs.racket-lang.org/net/url.html

Using the following site to get the IP address for the current machine:
https://www.ipify.org/

API call is: https://api.ipify.org?format=json

Using the following site for converting IP address to GPS location:
https://freegeoip.net/

API call is here: https://freegeoip.net/json/IP_ADDRESS_HERE

Using the following site for API requests for weather data:
http://openweathermap.org/current

Basically, I'm messing around with REST API requests in Racket.

First, use ipify.org to get IP address.
Second, send that IP address to freegeoip.net to get a rough lat/long location.
Finally, ping openweathermap.org for weather data and display that data.

|#

; Let's first get the current IP address for this PC.
; This is used to get the user's location for the weather API call.
(define myurl (string->url "https://api.ipify.org?format=json"))
(define myport (get-pure-port myurl))
(display-pure-port myport)

; From FP1 Github, for random testing.
;(define myurl (string->url "http://www.cs.uml.edu/"))
;(define myport (get-pure-port myurl))
;(display-pure-port myport)