#lang racket

(require net/url)

(define myurl (string->url "http://www.talenttechlabs.com/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)