Conor Finegan

conor_finegan@student.uml.edu

3/12/2016

For my fist exploration, I used a multi-threading library called job-queue. job-queue is a multi-threading library that allows the user to create a queue with a specified number of worker threads. Jobs, which are just parameterless procedures, can then be send to the queue and executed asynchronously. To demonstrate this functionality, I created a small program that finds and outputs all the prime numbers below a given value. Each test number is represented by a job, so a higher number of worker threads means faster execution.

Here is the source code for my project:
```
; prints the given value if it is prime
(define (print-if-prime n)
  (unless (not (prime? n)) (display n) (newline)))

; creates a closure around a procedure that prints the given value if it is prime
(define (create-prime-proc n)
  (λ () (print-if-prime n)))

; calculates and displays all primes between 2 and the given max-prime
; uses multi-threading with a maximum number of threads specified by max-threads
(define (calc-primes max-prime max-threads)
  (define primes-queue (make-job-queue max-threads))
  (for ([i (+ max-prime 1)])
    (submit-job! primes-queue (create-prime-proc i))))
```

If called with `(calc-primes 50 4)`, the following output is generated:
> (calc-primes 50 4)
2
3
5
7
11
13
17
19
23
31
29
43
37
41
47

Note that some numbers were printed out of order. A less naive implementation might store the primes in a list, and sort them before outputing.

Here is a diagram outlining how the algorithm processes data:

![job-queue diagram](https://raw.githubusercontent.com/cfinegan/FP1/master/jobs_desc.png)
