#lang racket
	
(require net/url)

(define blog-url (string->url "http://www.cs.uml.edu/ecg/index.php/OPLspr16/MartinBlog"))
(define (fetch url)
  (call/input-url url
                  get-pure-port
                  port->string))
(define markup
    (car (regexp-match #rx"((?=<strong>Meeting).*?(?<=</ul>))" (fetch blog-url))))
(define out (open-output-file "latest-blog-post.html" #:exists 'replace))
(write markup out)
(close-output-port out)