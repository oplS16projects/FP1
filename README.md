## My Library: net/url and json

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

I decided to mess around with two racket libraries, net/url and json.
I used net/url to make HTTP GET requests to various APIs, and json to
parse the JSON response text from these APIs. The three APIs I used were:

[ipify - IP Address lookup API](https://www.ipify.org/)

[freegeoip.net - geolocation of an IP Address API](https://freegeoip.net/)

[OpenWeatherMap - current weather conditions for thousands of cities](http://openweathermap.org)

The idea behind this was basically to first lookup the IP address of my machine
using ipify, then feed that IP address into freegeoip.net to get the lat/long
of my current location. I then did a API call to OpenWeatherMap to get the
current weather conditions for my location. All of this is stored using racket
variables, and printed out the screen.

An example run of my program:


