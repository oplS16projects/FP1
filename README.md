## My Library: (net/url)
######Current Final Project Idea:  Multi User Dungeon (MUD)
Idea requirements: 

1. Creating and hosting a server module
1. Creating a client module that will play nice with the server module
1. create options for interaction between clients and/or clients and the server.

FP1 will be an exploration of the "net/url" library at the suggestion of instructor Fred Martin.  I will be exploring the library with the hope that it will provide me with some of the necessary structure to build server/client code.  The target of my experimentations with this library will be a small website designed by a friend of mine.


####First step: Blindly copy and paste the sample code and see what that gets me:
```
#lang racket

(require net/url)

(define myurl (string->url "http://www.billnyeisalizard.com/"))
(define myport (get-pure-port myurl))
(display-pure-port myport)
```

Result: HTML source code for the site, ugly and not particularly useful in this state, or for my purposes at all really.

![Look at me im alt text](http://i.imgur.com/QoN8NgI.png?1 "Oooooooooooooh nooooooooo. . .")


####Second step:  Actually do some reading on the library and see what it can do for me aside of spit out raw HTML files.

There are a lot of interesting commands in the library pertaining to conversions of things to and from the url format.

An interesting command I stumbled across was `(get-pure-port/headers)`,  It looks like this just pulled all information out of the head tag of the html file.

Result: Finally some ledgible information.
![more alt text](http://i.imgur.com/c4r20fL.png "I can actually read this like a person")

With this I can see when he last updated it, the page's content type, and the host server.

TODO:
* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

## TODO:
1. Finish the report and commit it
2. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.

## Project Schedule
This is the first part of a larger project. The final project schedule is [here][schedule]

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
