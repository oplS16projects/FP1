## My Library: JSON
For FP1, I explored the JSON library. I was able to convert a JSON expression into a string, read a JSON expression from a file, print them both, and test for valid JSON expressions. 

To start my program off I first defined a string str. The string was a simple example I discovered on stackexchange:
```racket
(define str "{\"foo\": \"bar\", \"bar\": \"baz\"}")
```
Afterwards, I used string->jsexpr which does exactly as it's written. Writing `(string->jsexpr str)` would convert a string into a JSON expression. I defined this to be x in my program. 
```racket
(define x (string->jsexpr str))
```
With a JSON expression x, it was easy to use jsexpr->string to convert my x back into a string. I defined this as y:
```racket
(define y (jsexpr->string x))
```
I then was able to read in a sample JSON file from the internet. This file will be named "test.json" in this repo. read-json reads a JSON expression from a valid input port, which ended up being `(open-input-file "test.json")` I defined this input to be z:
```racket
(define z (read-json (open-input-file "test.json")))
```
Finally I played around with `(jsexpr? x)` to determine json expressions. As per the documentation for `(jsexpr? x)`, the procedure will return true when x is:
* the value of jsnull, 'null by default
* boolean?
* string?
* (or exact-integer? inexact-real?)
* (listof jsexpr?)
* (hasheqof symbol? jsexpr?)
My x, y, and z would be valid jsexpr, as would 'null as I havent changed jsnull's default. I worked out `(jsexpr? 2.7+3i)` as a test case that should fail which worked in my tests.
```racket
(jsexpr? 'null)  ;; #t
(jsexpr? 2.7+3i) ;; #f
(jsexpr? x)      ;; #t
(jsexpr? y)      ;; #t
(jsexpr? z)      ;; #t
```
Below is the output of my program, with spaced between each test.
![alt-text](https://github.com/tventura1337/FP1/blob/master/output.PNG?raw=true "Code Output")
