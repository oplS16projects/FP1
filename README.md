**Name:Rotana Nou
**Assignment: FP1
**Racket Library: Web Application
**Date: Friday, March 11, 2016


* Purpose of this project

In this project, I used "Tools" library "Web Applications in Racket". That was provided by the racket documentations.
The main purpose of this project that I am using this library, becuase I want create a website that could show examples of 
the output of a program that could encryped and decrypted an image of a cat picture. Also on the websie it provides a direct
links to viewers if the viewers would like to see the images of the encrypted and decrypted. 

* Code explaination

```racket
#lang racket

(require web-server/servlet
         web-server/servlet-env) 

 
(define (my-web require)    ;;my-web function of servlet
  (response/xexpr
   `(html (head (title "PHOTO MAGIC!"))    ;;title of the page 
          (body (p "Welcome to PHOTO MAGIC"))  ;;paragraph of the page body
          (body (p "On this page you will see the example of encrypted and decreyped images.")  ;;paragraph of the page body
                (div (h1 "First")  ;;First cell of the page inside the body page
                     (body (p "Encrypted picture of a cat.")  ;;body of the first cell which contains paragraphs and direct link
                           (p "If you want to see the image of encrypted cat.")
                           (p "Please visit the link provided in this section.")
                           (a ((href "http://s27.postimg.org/hmw8z9par/Screen_Shot_2016_02_24_at_11_25_00_PM.png")) "http://s27.postimg.org/hmw8z9par/Screen_Shot_2016_02_24_at_11_25_00_PM.png")))  ;;direct link for encrypted image
                (div (h2 "Second")  ;;second cell inside the body of the page
                     (body (p "Decrypted picture of a cat.")  ;;body of the second cell which contains paragraphs and direct link
                           (p "If you want to see the image of encrypted cat.")
                           (p "Please visit the link provided in this section.")
                           (a ((href "http://s23.postimg.org/7n4sf6dez/Screen_Shot_2016_02_24_at_11_25_50_PM.png")) "http://s23.postimg.org/7n4sf6dez/Screen_Shot_2016_02_24_at_11_25_50_PM.png")))))))  ;;direct link for decrypted image
 
(serve/servlet my-web
               #:servlet-path "/kitty.rkt"
               #:port 2843
               #:listen-ip "127.0.0.1") ;; customization of serve/servlet 
```
For the above code. In order to crate a function to create a website, my program requires web-server/servlet
and web-server/servlet-env. Then created my-web function as a servlet that has an argument named require. 
inside this function is a html structure that are written as racket language. Including the head of the web page which has title of the page which is called "PHOTO MAGIC" and body of the page which contains paragraphs and divides into two seperate cells. Which cell has it's own body that has paragraphs and direct links that allows viewers to click and view the oupput of encrypted and decrypted image. 

* Output from the code and what it produced 
On racket console 
```racket
Your Web application is running at http://localhost:2843/kitty.rkt.
Stop this program at any time to terminate the Web Server.
```
The output above produces a URL that has port number 2843 with a servlet-path named "kitty.rkt"

######Below is the output on the website.
**************
Welcome to PHOTO MAGIC

On this page you will see the example of encrypted and decreyped images.

First

Encrypted picture of a cat.

If you want to see the image of encrypted cat.

Please visit the link provided in this section.

http://s27.postimg.org/hmw8z9par/Screen_Shot_2016_02_24_at_11_25_00_PM.png

Second

Decrypted picture of a cat.

If you want to see the image of encrypted cat.

Please visit the link provided in this section.

http://s23.postimg.org/7n4sf6dez/Screen_Shot_2016_02_24_at_11_25_50_PM.png
*******************

Above is the ouput displays on the website. First it intorduces the welcome to the page
in the body it divides into two parts. First part is the encrypted image of the a cat.
it provides the link for viewers to do directly to the imgae just simply click on the link
then it will directly bring to new link which contains the output of the encrypted image of a cat.
Second part it contains everything the same as part one, except that it is a decrypted part which
provides the direct link of the output of decrypted image of a cat image. Viewers just simply click on
the link then it would bring to a new link that dispalys the decrypted image of a cat. 
