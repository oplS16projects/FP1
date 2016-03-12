# Final Project Assignment 1: Exploration (FP1)
## My Library: github-api
My name: Brian Thomas

I created a racket program (fp1.rkt) that will upload itself to a gist file/repo thingie. It first prompts the user for their username and a personal-token. It uses these to create an ID, which is passed to the github-api procedure and returns a procedure that is used as an argument for other github-api procedures. Presumably allowing you to call functions associated with the previously entered username and token. The program then opens a file and reads it, line by line, appending each line to a string which eventually contains the entire file. The program then creates a gist file with some place holder text of "a". This gets overwritten with the next call to edit the file, writing in the string previously created. End of program.

#Highlights of code

It's hard to call these highlights, but it's really the meat of the program.

```
; Read from a file line by line until eof, creating and returning a string
; containing all lines from the file with newlines in between.
; This is an iterative procedure because the last thing it does is call itself with no chain of deferred actions.
; It is O(n) in time but O(1) in space.
(define (read-file in lines)
  (let ((new-line (read-line in 'any)))
    (if (eof-object? new-line)
        lines
        (read-file in
                   (string-append lines "\n" new-line)))))

; Read the file in. This just calls the previous function to read the file, passing it the file ptr and telling it to stop
at every line or carriage return. Binds the result to mylines.
(define mylines (read-file in (read-line in 'any)))


; Create a gist to begin uploading lines. This creates a gist with the file name fp1.rkt and the contents of "a". The "a" ; : ; will be overwritten later. It was not possible to create a blank gist. It also saves the return value into create-response ; so the data can be retrieved for the ID.
(define create-response (github-create-gist github
                                            (list (cons "fp1.rkt" "a"))
                                            #:description "FP1"))

; Get the id for the gist file
(define gist-id (get-gist-id create-response))

; Write to gist file. This edit's the gist file, overwriting anything in it previously (the "a"). I pass it the gist-id and mylines(the string created earlier) and writes it to the file fp1.rkt.
(display "Writing to gist file...\n")
(define edit-response (github-edit-gist github
                                        gist-id
                                        (list (cons "fp1.rkt" mylines))))
 ```

#Output from my code
My code doesn't create much output in the REPL. Here is the full output:

"Please eneter your username" <username>
"Please enter your personal token"<token>
Reading file...
Writing to gist file...
Done.

#Pictures showing my work
<img src="https://github.com/jumpyhoof/FP1/Photo1.png">
<img src="https://github.com/jumpyhoof/FP1/Photo2.png">
