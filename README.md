## My Library: OpenSSL
My name: Connor Emma

After going to the Racket documentation website and looking through some libraries, secure communication struck me as a relevant and interesting project to persue. Including the library was shockingly easy, but also sketchy when you know your computer is running networking commands with some server behind the scenes. 

Here is a useful command with output I typed to make sure the library was working in the first place: 
```racket
ssl-available?
#t
```
Then I proceeded to explore the library a bit.

![alt text](https://i.imgur.com/TDX3rQ5.jpg?1 "Some basic understanding of how to use a computer.")

Here is a brief description of the commands I used:

`(ssl-make-client-context)` Creates an SSL context  accepts an argument for what protocol should be used during the ssl session. 

`(ssl-secure-client-context)` Same as `(ssl-make-client-context)` but automatically uses \'secure as its argument. 

`(ssl-client-context)` Returns true if '(ssl-make-client-context)' returns an expected return value. Returns false otherwise.

`(ssl-listen)` Similar to a TCP listener, but secured. Not that I know what that is...


#Here is my interpretation of what the professor asked for when he said "diagram".

![alt text](https://i.imgur.com/6MCPvDs.png "MS Paint Yes I am a computer hacker genius basically Neo from The Matrix".)

