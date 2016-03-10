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

API call is:
https://api.ipify.org?format=json

Using the following site for converting IP address to GPS location:
https://freegeoip.net/

API call is here:
https://freegeoip.net/json/IP_ADDRESS_HERE

Using the following site for API requests for weather data:
http://openweathermap.org

API call is here:
api.openweathermap.org/data/2.5/weather?lat=LAT_HERE&lon=LONG_HERE

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

; Now ip_response has a string that looks like "{\"ip\":\"129.63.253.73\"}"
; Let's convert his string into a JSON object
(define ip_obj (string->jsexpr ip_response))

;; Now we have a JSON object (represented under the hood as a hash table)
;; It looks like this in Racket:
#|
> ip_obj
'#hasheq((ip . "129.63.253.73"))
|#

;; If we want to get just the IP into a string, we can access just the IP
;; part of the hash table like so:
(define ip_addr (hash-ref ip_obj 'ip))

;; So why don't we use this string, ip_addr, which contains our current IP,
;; such as "129.63.253.73", to get a rough lat/long for the user?

;; Create the API string
(define get_loc (string-append "https://freegeoip.net/json/" ip_addr))

;; Make the HTTP GET request, store the response in "geo_response"
(define geo_ip (string->url get_loc))
(define get_geo (get-pure-port geo_ip))
(define geo_response (port->string get_geo))
(close-input-port get_geo)

;; Convert geo_response to a JSON object, just like before.
(define geo_obj (string->jsexpr geo_response))

;; So now we have a bunch of JSON from the freegeoip API call.
;; It kind of looks something like this:
#|
> geo_obj
'#hasheq((ip . "129.63.253.73")
         (latitude . 42.6523)
         (longitude . -71.3506)
         (country_code . "US")
         (country_name . "United States")
         (region_code . "MA")
         (region_name . "Massachusetts")
         (city . "Lowell")
         (zip_code . "01854")
         (time_zone . "America/New_York")
         (metro_code . 506))
|#

;; All we care about though is the "latitude" and "longitude" code, so let's
;; just grab those and stick them into two string objects.
(define user_lat (hash-ref geo_obj 'latitude))     ;; Latitude string
(define user_long (hash-ref geo_obj 'longitude))   ;; Longitude string


;; Now we have a rough latitude / longitude for the user.
;; Why don't we pass this to openweathermap.org and get the current
;; weather conditions for this location!

#|

API call: 
http://api.openweathermap.org/data/2.5/weather?lat=LAT_HERE&lon=LONG_HERE&appid=44db6a862fba0b067b1930da0d769e98

|#

;; Create the API string
(define open_weather "http://api.openweathermap.org/data/2.5/weather?lat=")
(define lat_str (number->string user_lat))
(define long_str (number->string user_long))
(define api_key "&appid=44db6a862fba0b067b1930da0d769e98")
(define get_weather (string-append open_weather lat_str "&lon=" long_str api_key))

;; The API string could look like this for example:
#|
> get_weather
"http://api.openweathermap.org/data/2.5/weather?lat=42.6523&lon=-71.3506&appid=44db6a862fba0b067b1930da0d769e98"
|#

;; Now we can use this URL string to get weather data!
(define weather_data (string->url get_weather))
(define get_data (get-pure-port weather_data))
(define weather_response (port->string get_data))
(close-input-port get_data)

;; Convert geo_response to a JSON object, just like before.
(define weather_obj (string->jsexpr weather_response))

#|
Finally, we should have a JSON object with a bunch of weather data
for our current location!

The object might look something like this:
> weather_obj
'#hasheq((id . 4942618)
         (coord . #hasheq((lon . -71.32) (lat . 42.63)))
         (weather . '(#hasheq((id . 500) (description . "light rain") (icon . "10d") (main . "Rain"))))
         (wind . #hasheq((speed . 1.43) (deg . 226.503)))
         (rain . #hasheq((3h . 0.595)))
         (clouds . #hasheq((all . 92)))
         (main . #hasheq((temp . 290.174) (pressure . 1016.88) (humidity . 88) (temp_min . 290.174) (temp_max . 290.174) (sea_level . 1026.91) (grnd_level . 1016.88)))
         (sys . #hasheq((country . "US") (sunrise . 1457607817) (sunset . 1457650042) (message . 0.0132)))
         (cod . 200)
         (name . "Lowell")
         (dt . 1457638592)
         (base . "cmc stations"))
|#

#|
   So for the final output of this program, let's display some misc weather data for the current location!
   Let's make the example output look like the following:

***********************************************************************************************************
   CURRENT CITY: city_here
   Lat/lon: longitude_here / latitude_here
   Description: description_here
   Wind Speed: wind_speed_here
   etc, maybe a few other things that we can get.
   
***********************************************************************************************************

|#

;; Strings here.
(define city_name (hash-ref weather_obj 'name))               ;; Example - "Lowell"
(define coord_obj (hash-ref weather_obj 'coord))              ;; Should get the coord hashtable inside the weather hashtable.
(define coord_lat (hash-ref coord_obj 'lat))                  ;; Example - "42.63"
(define coord_long (hash-ref coord_obj 'lon))                 ;; Example - "-71.32"
(define cond_obj (hash-ref weather_obj 'weather))             ;; Should get the conditions obj inside the weather obj.
(define conditions (hash-ref (car cond_obj) 'description))    ;; Example - "light rain"
(define wind_obj (hash-ref weather_obj 'wind))                ;; Should get the wind obj inside the weather obj.
(define wind_speed (hash-ref wind_obj 'speed))                ;; Example - "1.43"

;; Print out the strings.              
(printf "CURRENT CITY: ~a\n" city_name)
(printf "Lat/Long: ~a / ~a\n" coord_lat coord_long)
(printf "Weather conditions: ~a\n" conditions)
(printf "Wind speed: ~aMPH\n" wind_speed)

;; AND we're done!
