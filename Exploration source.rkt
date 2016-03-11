#lang racket

(require openssl)

ssl-available?

(ssl-client-context? (ssl-make-client-context 'auto))

(supported-client-protocols)

(ssl-client-context? (ssl-make-client-context 'sslv2))

(ssl-secure-client-context)

(ssl-listen 8080 5 #f #f 'auto)