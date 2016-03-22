**SIMPLE QR LIBRARY**
**-ALEXANDER CUSHING**

I decided to use the "simple-QR" plugin

for the exploration part of this experiment/project,
I created some basic QR codes, created a function that
would allow the user to make one, then created a function
that would allow a user to make a list of strings of
websites into QR codes.

In this code I create a QR for the original source, my GitHub, the FP1 source,
and I also allow the user to input a website string using the function
"makeQRForME", and a list of website strings using the function "addqrlist" and a
count variable.

```racket
(qr-code "https://github.com/simmone" "gitSource.png")

(qr-code "https://github.com/alexcushing" "myGitHub.png")

(qr-code "https://github.com/alexcushing/FP1" "ExplorationPartOne.png")


;;this function will take a string and create a png QR code
;;with the inputted string
(define (makeQRForME mystring namestring)
  (qr-code mystring (string-append namestring ".png")))

(define count 0)

;;this loops through a list of strings which should all be websites
;;and creates QR codes for each until it reaches the end
;;of the user defined list. This uses a count variable defined before
(define (addqrlist lst)
  (let loop ((rest lst)
             (count 0))
    (unless (null? rest)
      (makeQRForME (car rest) (format "stringQR~a" count))
      (loop (cdr rest) (add1 count)))))
```

this code above creates the desired QR codes as pictured below:

![outputted QR codes](https://github.com/alexcushing/FP1/blob/master/example%20of%20it%20working.png "QR CODES")
