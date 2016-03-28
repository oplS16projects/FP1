#Tyler Bezuka
##Library: Sugar

For my first library exploration I worked with sugar. Sugar is a simple library designed to help with debugging in racket,
improve performance, and make certain tasks (i.e. trimming a string) simpler. The first procedure I worked with was
```
(->int v) -> integer?
v: any/c
```
This procedure takes any argument and converts it to an integer or returns false if a conversion cannot be made. To use this
procedure I defined a function
``` 
(define (round-off-procedure x y func)
  (->int (func x y)))
```
Example output:
![example output](https://github.com/tylerbezuka/FP1/blob/patch-1/fp1-ex.png)
This function takes any two numbers and applies a function to them. For example (round-off-procedure 23 3 /). ->int is then
applied to the value of this function rounding the value returned to a whole number. 

The next procedure I experimented with was 
```
(make-caching-proc proc) -> procedure?
proc: procedure?
```
This function makes a caching version of the procedure passed by creating a hash table of the attached procedure where
values are saved/retrieved. The hash keys are the arguments passed to proc. To test this procedure I created a function: 
