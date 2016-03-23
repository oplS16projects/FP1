# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: net/url
 My name: Yusuf Yildiz
 
 For this exploration I created a scraper for Fred's blog page.
 The scraper grabs the latest blog post and saves it locally
 to the users local folder as "latest-blog-post.html".
 I used the net/url library to pull the source code of Fred's blog
 and the following regexp-match procedure to pull the latest entry from the blog:
 
 ```
 #rx"((?=<strong>Meeting).*?(?<=</ul>))
 ```
 
 The way that this regex works is it just looks for everything inside the given
 text that matches the first set of keys, which in this case is "\<strong>Meeting"
 and then matches everything until and including "\</ul>".
 
 This is what the created html output looks like:
 ![Image of HTML output]
 (http://i.imgur.com/r4g9td3.png)
