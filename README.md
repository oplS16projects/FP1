# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016


## My Library: (net/url) 
My name: John Brown
* Yes I know I used the example one, I'm totally uncreative, whatever, it interested me.

I broke my code largely into two sections. My goal was to learn how to interact with an SQL server the most secure way possible. (when uploading my project to a oublic repository)(hence no using the Database library as I would have to post passwords)
The first section is the aforementioned accessing the database (ultimately using PHP queries) and the second section is accessing a raw HTML file and parsing it using handwritten codes.

## Section 1: Using post-pure-port
I reiterate this numerous times throughout the comments in my code, but this was seriously annoying to get to work.
post-pure-port allows you to use _POST http/php commands, and retrieve an echo'd value.

```
(define base "http://jdbjohnbrown.net/gameSync.php")
(define my-site (string->url base))
(define Header (list "Content-Type: application/x-www-form-urlencoded"))
(define target-post (string->bytes/utf-8 (format "f=tgn&id=1")))

(define (get-player-string x)
  (define in
  (post-pure-port my-site (string->bytes/utf-8 (format (string-append "f=tgn&id=" (number->string x)))) Header) )
  (begin0
  (port->string in)
  (close-input-port in)))
```
  
Here I set up numerous variables to make future succesive calls easier.
Finally I use what we're all here for and that's post-pure-port. 
This calls parameters take the url in string->url form, which I pass in the website.
Next it takes arguements for the _POST call, which have to be very specifically formated.


This outputs a string which is then parsed into an object (firstname lastname (number position) (goals assists points))
Lastly, I use this object and several selectors in the code to display the information in a easy to read way:


![alt tag](https://github.com/JDBJohnBrown/FP1/blob/master/sample-output1.png)
  
  
## Section 2: Using get-pure-port
I used get-pure-port to retrieve the HTML code of the website which stores the standings and basic statistics for various hockey teams in the league I play in.

From here I wrote codes to parse the data, and load each team and its stats into individual lists, all contained in on master list.
```
(define HT-string "http://hockeytownsaugus.com/monstrt.htm")
(define HT-site (string->url HT-string))
(define HT-port (get-pure-port HT-site))
(define HT-html (port->string HT-port))
(close-input-port HT-port)
```
This code is the basic parts of what I did. The main code coming out of the library.
Very straight forward. get's the return from the site, then changes it into a string, and lastly closes the port so we don't have a leak.


