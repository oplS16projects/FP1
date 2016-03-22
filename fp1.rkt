#lang racket
(require json)

(define str "{\"foo\": \"bar\", \"bar\": \"baz\"}")
(define x (string->jsexpr str))

(define y (jsexpr->string x))
(display y)

(display "\n\n")

(define z (read-json (open-input-file "test.json")))
(display (jsexpr->string z))

(display "\n\n")

(jsexpr? 'null)  ;; #t
(jsexpr? 2.7+3i) ;; #f
(jsexpr? x)      ;; #t
(jsexpr? y)      ;; #t
(jsexpr? z)      ;; #t

