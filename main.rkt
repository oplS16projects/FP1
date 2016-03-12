#lang racket

(require net/url)
(require json)

(define in (get-pure-port (string->url "http://jsonip.com")))
(define res (port->string in))
(close-input-port input)

(define x (string->jsexpr res))
(for (((k v) (in-hash x)))
  (printf "~a is ~a~%" key val))
