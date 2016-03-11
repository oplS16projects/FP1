## My Library: HTML: Parsing Library
My name: John Adams

Narrative:
 Exploring the HTML Parsing Library, (after a misunderstanding- I believed a line of code to be user-entered in the console, when it was really part of the coding within DrRacket) I've been able to create two HTML 'strings' of three segments, or parts: a 'head' and two 'paragraph' pieces, contained in the body segment.
 
 I was then able to have both HTML strings print to the console, using the two require code-pieces at the bottom- 
 ```
 #lang racket
 
 (require html)
 
 (module html-test1 racket
 ...)
 
 (module html-test2 racket
 ...)
 
(require 'html-test1)
(require 'html-test2)
```
The two (require 'html-test)'s I had originally believed to be entered into the console, when they were part of the code itself. I finally found out I was incorrect, and the two printed to the screen properly.

![screen-fp1](https://cloud.githubusercontent.com/assets/17749976/13691533/9dfb0bf8-e707-11e5-9584-f67a43613aed.jpg)

Roughly in the middle of the above screen shot, there is a define:
```
(define an-html
    (h:read-xhtml
     (open-input-string
      (string-append
       "<html><head><title>Fred Martin</title></head><body>"
       "<p>Teaches OPL on Mondays, Wednesdays, and Fridays</p><p><b>From 12pm to 1pm</b></p>"
       "</body></html>"))))
```

This is the first, three-piece HTML string- the Header, and two Paragraph segments, contained in the body.
This HTML-String is contained in html-test1, the first custom module.

The output can be seen at the bottom of the screenshot, in the REPL.

If it is too small, here it is as well:
![screen-fp1-2](https://cloud.githubusercontent.com/assets/17749976/13691780/931565a6-e709-11e5-8f80-329e6101f9e9.jpg)



Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

Ask questions publicly in the email group.

## How to Prepare and Submit this assignment

1. To start, [**fork** this repository][forking]. 
  2. (This assignment is just one README.md file, so you can edit it right in github)
1. Modify the README.md file and [**commit**][ref-commit] changes to complete your report.
1. Add your racket file to the repository. 
1. Ensure your changes (report in md file, and added rkt file) are committed to your forked repository.
1. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.

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
