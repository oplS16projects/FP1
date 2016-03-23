#lang racket
(require simple-qr)
(qr-code "Hello World!" "hello.png")
(qr-code "www.uml.edu" "uml.png")
(qr-code "https://github.com/YusufSM/FP1" "github.png" #:module_width 9)