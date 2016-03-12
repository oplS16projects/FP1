#lang web-server/insta
(define private-key "private-key")
(define opaque "visible")
 
(define (start req)
  (match (request->digest-credentials req)
    [#f
     (response
      401 #"Unauthorized" (current-seconds) TEXT/HTML-MIME-TYPE
      (list (make-digest-auth-header
             (format "Basic Authorization: ~a" (gensym))
                    private-key opaque)) void)]
    [alist
     (define check (make-check-digest-credentials
                   (password->digest-HA1 (lambda (username LauraLuc) "pass"))))
     (define pass? (check "GET" alist))
     (response/xexpr
            `(html (head (title "Auth Test"))
                   (body (h1 ,(if pass? "OPL Project Spring 2016!" "No Pass!"))
                         (href "********************************************")
                         (p "Fred Martin " (span ((class "and")) "& Marc Sherman") " ")
                         (href "They are challenging us " (span ((class "us")) "but they rock :)!!!") ".")
                          )))]))
                                                                                         


