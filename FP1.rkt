#lang racket

(require html)

(module html-test1 racket

  (require (prefix-in h: html)
           (prefix-in x: xml))
 
  (define an-html
    (h:read-xhtml
     (open-input-string
      (string-append
       "<html><head><title>Fred Martin</title></head><body>"
       "<p>Teaches OPL on Mondays, Wednesdays, and Fridays</p><p><b>From 12pm to 1pm</b></p>"
       "</body></html>"))))
 
  (define (extract-pcdata some-content)
    (cond [(x:pcdata? some-content)
           (list (x:pcdata-string some-content))]
          [(x:entity? some-content)
           (list)]
          [else
           (extract-pcdata-from-element some-content)]))
 
  (define (extract-pcdata-from-element an-html-element)
    (match an-html-element
      [(struct h:html-full (attributes content))
       (apply append (map extract-pcdata content))]
 
      [(struct h:html-element (attributes))
       '()]))
 
  (printf "~s\n\n" (extract-pcdata an-html)))

(module html-test2 racket
 
  (require (prefix-in h: html)
           (prefix-in x: xml))

  (define an-html
    (h:read-xhtml
     (open-input-string
      (string-append
       "<html><head><title>OPL Final Project:</title></head><body>"
       "<p>Lasts from now until the final day of classes, April 29th.</p><p><b>This is terrible!</b></p>"
       "</body></html>"))))
 
  (define (extract-pcdata some-content)
    (cond [(x:pcdata? some-content)
           (list (x:pcdata-string some-content))]
          [(x:entity? some-content)
           (list)]
          [else
           (extract-pcdata-from-element some-content)]))
 
  (define (extract-pcdata-from-element an-html-element)
    (match an-html-element
      [(struct h:html-full (attributes content))
       (apply append (map extract-pcdata content))]
 
      [(struct h:html-element (attributes))
       '()]))
 
  (printf "~s\n\n" (extract-pcdata an-html)))

(require 'html-test1)
(require 'html-test2)
