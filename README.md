## My Library: (net/url) and (net/send
Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

I created a basic web page and used the net/url library to listen to a port (html / 80) on my local-host (127.0.0.1)
The program then uses (net/send-url to make the user's web browser to connect to the local-host at 80, at which point the listener
responds with a html formatted web-page. Creating the code for the webpage is difficult in racket, as the escape character "\" must be used before symbols (quotation marks especially) so that we can use them in the strings of html code and not have them be parsed by racket. These libraries would be integral to designing a web-server based in racket, and if used in combination with modular html/scripts/web-languages, could create an interesting way of hosting online-applications. Given a static public ip, this program could be simply modified to host publicly, and the send-url function can already be used to open a browser to any public page.

Listener for connection at port:
```racket
  (define listener (tcp-listen port-no 5 #t))
  (define (rept)
    (handle listener)
    (rept))
```

Racket function to print the html code for the sample webpage
```racket
(define (function in out)
    (print "user connected")
    (regexp-match #rx"(\r\n|^)\r\n" in)
    ; Send reply:
    (display "HTTP/1.0 200 Okay\r\n" out)
    (display "Server: k\r\nContent-Type: text/html\r\n\r\n" out)
    (display "<html><body>"  out )
    (display "<h1>Hi there. The test is working!</h1>" out)
    (display "<a href=\"https://github.com/kennysandbum/FP1\" style=\" color: black\">Project Repo</a>"  out)
    (display "<a href=\"https://mitpress.mit.edu/sicp/\"> <img src=\"http://www.cs.uml.edu/ecg/pub/uploads/OPLspr16/sicp-cover.jpg\" alt=\"Textbook\"> </a>" out)
    (display "</body></html>" out))
```

