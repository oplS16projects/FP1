## My Library: ring-buffer
My name: Harrison Desjardins

Most of the library was straight foreward.  All the commands work on creating or doing stuff with ring buffers.  The
function empty-ring-buffer is used to create a ring buffer.  I then used the function ring-buffer-push! to add in elements
to the ringbuffer.  The following is the code I used.

```
#lang racket
(require data/ring-buffer)

(define ring (empty-ring-buffer 5))

(ring-buffer-push! ring 5)
(ring-buffer-push! ring 4)
(ring-buffer-push! ring 3)
(ring-buffer-push! ring 2)
(ring-buffer-push! ring 1)
```

I found out that ring-buffer-push! starts by putting the first value pushed on to the last position, in my case 5, and
then puts the next values int 1 then 2 and so on.  I was looking to see if I could replicate the function fill ring buffer,
similar to the function in the Guitar Hero project in Computing 4.  I started by making a procedure called fill-ring-buffer that
took a ring buffer and a value to fill the ring buffer with.  I then went and made a simple helper function to allow me to 
iterate through the ring-buffer as I fill it.  The following is the procedure I created.

```
(define (fill-ring-buffer rb value)
  (define (helper rb v count size)
    (if (> count size)
        rb
        (helper (and (ring-buffer-push! rb v) rb) v (+ count 1) size)))
  (helper rb value 0 (ring-buffer-length rb)))
  ```

This code will produce a ring buffer filled with any value given.  I tested it and was able to produce the following:

```
> (fill-ring-buffer ring 2)
#<ring-buffer>
> (ring-buffer-ref ring 1)
2
> (ring-buffer-ref ring 2)
2
> (ring-buffer-ref ring 3)
2
> (ring-buffer-ref ring 4)
2
>
(ring-buffer-ref ring 5)
2
> 
```

I also have included a picture of the working code below.
![alt tag](https://github.com/HTDesjardins/FP1/blob/master/FP1.jpg)
