# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: net/url & json
My name: Saurabh Verma

Write what you did!

http://jsonip.com/ returns a JSON-based result, showing the client’s IP address. I used the net/url library to make a GET request to their server. When the request returned successfully, I used the JSON library to parse the JSON result and display the result, broken down by elements. I use the `get-pure-port` to send a request and receive a response from JSONIP. I then close the port and use `jsexpr` to read the response.

For example, here is the output that was displayed in DrRacket's Interactions window, when the code was executed:

    ip = 77.121.28.155
    about = /about
    Pro! = http://getjsonip.com

![Diagram](/diagram.png?raw=true "Diagram")

Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

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
