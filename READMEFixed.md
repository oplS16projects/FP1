
## My Library: Simple-Qr
My name: Kevin Dibble

When I was looking through the list of libraries, I stopped at Simple-QR because I thought it was going to be an interesting exploration. Unfortunately, there didn't seem to be that much to do with the library.
The interface is very simple and was documented well enough. However, there was a complete discrepancy in one of the modes to generate QR codes with. There was supposed to be a way to select Alphanumeric vs Numeric, but the supplied documentation produced errors:
'''
> (qr-code "https://github.com/" "alpha.png" #:mode "A")
. . hash-ref: no value found for key
  key: "h"
'''
I tried playing around with different strings, but I wasn't able to get anywhere.
The module width and error level options did work as described however, so I was able to test those.

The sucessful QR codes that I was able to generate were output in a new file in a path I specified. The following line created a default code that links to github.com and was created in the current directory:
'''
(qr-code "https://github.com/" "normal.png")
'''

Changing the size of the code was easy:
'''
(qr-code "https://github.com/" "small.png" #:module_width 2)
'''

Setting the error level was also easy:
'''
(qr-code "https://github.com/" "errorL.png" #:error_level "L")
'''


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
