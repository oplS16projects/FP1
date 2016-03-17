#lang racket

(require net/url)  ;;Needed to use any of the functions within the library
(require net/url-structs)


(define tobeurl "http://www.billnyeisalizard.com/") ;;Well formatted url
(define mystring "Look im a string!")  ;; Regular string
;; next we use the conversion proceedure to turn strings to urls
(define myurl (string->url tobeurl)) ;; properly functioning url
(define badurl (string->url mystring)) ;; technically it constructs fine, but isn't usable.

(url->string badurl);;look I can change it back, oh wait there are issues.
;; Looks like it changes spaces in the url to '%20'

(define myport (get-pure-port myurl))
(define myimpure (get-impure-port myurl))

(define myconnection make-http-connection)