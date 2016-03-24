
## My Library: Simple-Qr
My name: Kevin Dibble

When I was looking through the list of libraries, I stopped at Simple-QR because I thought it was going to be an interesting exploration. Unfortunately, there didn't seem to be that much to do with the library.
The interface is very simple and was documented well enough. However, there was a complete discrepancy in one of the modes to generate QR codes with. There was supposed to be a way to select Alphanumeric vs Numeric, but the supplied documentation produced errors:
```
> (qr-code "https://github.com/" "alpha.png" #:mode "A")
  hash-ref: no value found for key
    key: "h"
```
I tried playing around with different strings, but I wasn't able to get anywhere.
The module width and error level options did work as described however, so I was able to test those.

The sucessful QR codes that I was able to generate were output in a new file in a path I specified. The following line created a default code that links to github.com and was created in the current directory:
```
(qr-code "https://github.com/" "normal.png")
```
![Alt text](/normal.png?raw=true "Normal")

Changing the size of the code was easy:
```
(qr-code "https://github.com/" "small.png" #:module_width 2)
```
![Alt text](/small.png?raw=true "Normal")

Setting the error level was also easy:
```
(qr-code "https://github.com/" "errorL.png" #:error_level "L")
```
![Alt text](/errorL.png?raw=true "Normal")

Hopefully, the FP2 library will be more interesting
