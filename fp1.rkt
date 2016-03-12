#lang racket
(require mzlib/etc
         github-api)


(define path (string-append (path->string (this-expression-source-directory))
                            "fp1.rkt"))

; Struct access
(define code github-response-code)
(define data github-response-data)

; Get gist id from gist creation response
(define (get-gist-id create-gist-response)
  (hash-ref (data create-gist-response) 'id))

; Read from a file line by line until eof, creating and returning a string
; containing all lines from the file with newlines in between lines.
(define (read-file in lines)
  (let ((new-line (read-line in 'any)))
    (if (eof-object? new-line)
        lines
        (read-file in
                   (string-append lines "\n" new-line)))))


; Prompt user for username
(print "Please eneter your username")
(define username (symbol->string (read)))


; Prompt user for personal token
(print "Please enter your personal token")
(define personal-token (symbol->string (read)))


; Create token-id from personal token and username
(define personal-token-id (github-identity 'personal-token
                                           (list username personal-token)))

; Get github function for use in other api calls.
(define github (github-api personal-token-id))


; File to read from (this file)
(define in (open-input-file path))

(display "Reading file...\n")
; Read the file in
(define mylines (read-file in (read-line in 'any)))

; Create a gist to begin uploading lines.
(define create-response (github-create-gist github
                                            (list (cons "fp1.rkt" "a"))
                                            #:description "FP1"))

; Get the id for the gist file
(define gist-id (get-gist-id create-response))

; Write to gist file
(display "Writing to gist file...\n")
(define edit-response (github-edit-gist github
                                        gist-id
                                        (list (cons "fp1.rkt" mylines))))
; Close port and finish
(close-input-port in)
(if (port-closed? in)
    (display "Done.\n")
    (display "Port failed to close\n"))
