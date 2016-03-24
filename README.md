# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: net/url & json
My name: Saurabh Verma

http://jsonip.com/ returns a JSON-based result, showing the client’s IP address. I used the net/url library to make a GET request to their server. When the request returned successfully, I used the JSON library to parse the JSON result and display the result, broken down by elements. I use the `get-pure-port` to send a request and receive a response from JSONIP. I then close the port and use `jsexpr` to read the response.

## Example

For example, here is the output that was displayed in DrRacket's Interactions window, when the code was executed:

    ip = 77.121.28.155
    about = /about
    Pro! = http://getjsonip.com

![Diagram](/diagram.png?raw=true "Diagram")

Diagram by Saurabh Verma
