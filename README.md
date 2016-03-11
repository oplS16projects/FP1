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

Certain procedures such as ```racket (ssl-make-client-context)``` accept an argument for what protocol should be used during the ssl session. 

