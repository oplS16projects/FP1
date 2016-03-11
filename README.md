## My Library: SHA
I wrote a function to hash a list of byte strings. It returns a list of the hashed strings.
```
#lang racket
(require sha)
(define (hash-list lst)
 (if (null? lst)
  '()
  (cons (sha256 (car lst)) (hash-list (cdr lst)))))
```
I also wrote a function to consume a hashed list and return a list of the sums of their byte values.
![figure1](http://www.cs.uml.edu/~mbowe/OPL/fp1/fig1.png)
