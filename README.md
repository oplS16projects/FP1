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
```
(define (make-fast func)
  (make-caching-proc func))
```
And tested the function with: 
```
(define (compare-time func1 x)
  (time (make-fast (func1 x)))
  (time (func1 x)))
```
Compare-time takes two functions and compares output the time it takes to complete the function before and after calling the make-fast procedure. The time is significantly shorter after make-fast is called due to values being saved and retrieved in the has table created by (make-caching-proc). 

The last function I tested in the sugar library was
```
(define (report expr))
```
This function takes an expression and outputs the evaluation whether it be a boolean, integer, or string. 
