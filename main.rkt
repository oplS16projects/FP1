#lang racket

(require net/url)
(require json)

(define input (get-pure-port (string->url "http://jsonip.com")))
(define response (port->string input))
(close-input-port input)

(define x (string->jsexpr response))
(for (((key val) (in-hash x)))
  (printf "~a = ~a~%" key val))