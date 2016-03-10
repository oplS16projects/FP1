## My Library: net/url and json
I decided to mess around with two racket libraries, net/url and json.
I used net/url to make HTTP GET requests to various APIs, and json to
parse the JSON response text from these APIs. The three APIs I used were:

[ipify - IP Address lookup API](https://www.ipify.org/)

[freegeoip.net - geolocation of an IP Address API](https://freegeoip.net/)

[OpenWeatherMap - current weather conditions for thousands of cities](http://openweathermap.org)

The idea behind this was to first lookup the IP address of my PC
using ipify, then feed that IP address into freegeoip.net to get the lat/long
of my current location. I then did a API call to OpenWeatherMap to get the
current weather conditions for my location. All of this is stored using racket
variables, and printed out the screen.

An example run of my program:

![alt text](https://github.com/JasonD94/FP1/blob/master/example.png?raw=true)

Code highlights:


## Getting the IP Address.
```
;; Let's first get the current IP address for this PC.
;; This is used to get the user's location for the weather API call.
(define ipify (string->url "https://api.ipify.org?format=json"))
(define get_ip (get-pure-port ipify))
(define ip_response (port->string get_ip))
(close-input-port get_ip)

; Now ip_response has a string that looks like "{\"ip\":\"129.63.253.73\"}"
; Let's convert his string into a JSON object
(define ip_obj (string->jsexpr ip_response))
```

## Getting the geolocation.
```
;; Create the API string
(define get_loc (string-append "https://freegeoip.net/json/" ip_addr))

;; Make the HTTP GET request, store the response in "geo_response"
(define geo_ip (string->url get_loc))
(define get_geo (get-pure-port geo_ip))
(define geo_response (port->string get_geo))
(close-input-port get_geo)

;; Convert geo_response to a JSON object, just like before.
(define geo_obj (string->jsexpr geo_response))
```

## Finally, getting the current weather data.
```
;; Now we can use this URL string to get weather data!
(define weather_data (string->url get_weather))
(define get_data (get-pure-port weather_data))
(define weather_response (port->string get_data))
(close-input-port get_data)

;; Convert geo_response to a JSON object, just like before.
(define weather_obj (string->jsexpr weather_response))
```

## Output it all to the screen using printf
```
(printf "CURRENT CITY: ~a\n" city_name)
(printf "Lat/Long: ~a / ~a\n" coord_lat coord_long)
(printf "Weather conditions: ~a\n" conditions)
(printf "Wind speed: ~aMPH\n" wind_speed)
```
