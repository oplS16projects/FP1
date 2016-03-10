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

;; Let's first get the current IP address for this PC.
;; This is used to get the user's location for the weather API call.
(define ipify (string->url "https://api.ipify.org?format=json"))
(define get_ip (get-pure-port ipify))
(define ip_response (port->string get_ip))
(close-input-port get_ip)

; now ip_response has a JSON object of "ip" : "IP_ADDRESS_HERE"
; Let's pass that to a JSON parser
(define ip_obj (string->jsexpr ip_response))

;; Now we have a JSON object (represented under the hood as a hash table)
;; If we want to get just the IP into a string, we could do so by doing:
(define ip_addr (hash-ref ip_obj 'ip))

;; So why don't we use this string, ip_addr, which contains our current IP,
;; such as "129.63.253.73", to get a rough lat/long for the user?
(define get_loc ("https://freegeoip.net/json/" + ip_addr))

(define geo_ip (string->url get_loc))
(define get_ip (get-pure-port ipify))
(define ip_response (port->string get_ip))
(close-input-port get_ip)
