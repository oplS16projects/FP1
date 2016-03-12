
## My Library: MIDI Reader
My name: Alex Gribov

After looking through the Racket libraries, I decided to play around with the MIDI library, hoping it would let me interface my MIDI piano with my computer using racket. Alas, after figuring out how to install the library (didn't come with racket, and took a while to get running) I realized it's mostly meant for interpreting MIDI files, and filtering them based on certain quantities.
The docuementation for this library is horribly incomplete. Well, there basically isn't any documentation. It describes 4 functions then says 'go figure it out by looking at the source code'.

The documentation parses through MIDI files, like the one provided in this folder. The snippet
`(define song (midi-file-parse "FourLetterWord.mid"))`
will define song to be a list of lists, where each sub-list contains data of each note in the song. The following is an example of a sublist, which contains data such as what time it occurs, what note it is, and the timbre:
`(list 206400 (ChannelMessage 'note-on 1 '(42 95)))'

There are various parsing utilities in the function. These can be used to filter the MIDI data, and get specific informatio out of it. One example of this is the following function, which extrapolates just the data representing the pitch, timing, and volume of each note, ignoring data such as the instrument, and creates a list of that data.
`(define notes (MIDIFile->notelist song))`

An example of a node in the list `notes` is 
 `(note 60 404640 480)`

This filter distingushes the different layered tracks in one file:
`(define tracks (MIDIFile-tracks song))`

This tracks object can itself be parsed further. For example, say you want to know how long each of the individual tracks is played for. You can call the length function (which accumulates the  number of nodes), on any of the multiple tracks. as shown in the code snipped below:

```
(length (first tracks))
(length (second tracks))
(length (third tracks))
```

And the result is the following:

```
67
1112
2492
> 
```

Here's a picture of the parsed song note list:
[Testing!](FP1/screenshot.png)

