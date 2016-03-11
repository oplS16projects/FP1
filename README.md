## My Library: binary-class-mp3
My name: Dmitri Kheifets

## Scope:
I'm trying out ID3 parser library. The sample code builds a list of mp3 files
in a given directory, retrieves ID3 tags from mp3's and does some basic
read-only manipulations with ID3 fields, exploiting maps and filters :) 

## Highlights

Initially, the list of files is built using `directory-list` procedure.
An output from `directory-list` is fed through map and filter in order to
"convert" path-types to strings and remove directories from the list.
```racket
(define mp3-list (filter
                  file-exists?        ;always #f for directories
                  (map
                   path->string       ;extract path string
                   (directory-list
                    "X:\\tmp\\Surfing_With_The_Alien" ;list files/folders in this dir
                    #:build? #t))))   
```


A list of mp3's is mapped - ID3-tag is retrieved for each entry,
a new list of ID3-tag% objects is returned and "stored" in ID3-db
```racket
(define ID3-db (map (λ(x)(read-id3 x)) ;read-id3 returns ID3-tag object
                    mp3-list)) 
```


A sample procedure that builds a list of sublists, where each sublist is
a plain-text ID3 tag. Takes a list of ID3-tag objects as argument.
```racket
(define (show-tags tag-lst)
  (map (λ(x)(list (song x)
                  (artist x)
                  (album x)
                  (year x)
                  (genre x))) tag-lst))
```

### Run:
```racket
(display "-----Files----\n")
mp3-list                    ;mp3 file list
(display "-----Songs----\n")
songs                       ;output only song names
(display "----Track#8---\n")
(show-tags (tag "8"))       ;output tag for mp3 with ID3 track #8
(display "--All-Tracks--\n")
(show-tags ID3-db)          ;output all tags
```
### Output:
```
-----Files----
'("X:\\tmp\\Surfing_With_The_Alien\\010_Joe Satriani-Echo.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\01_Joe Satriani-Surfing With The Alien.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\02_Joe Satriani-Ice 9.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\03_Joe Satriani-Crushing Day.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\04_Joe Satriani-Always With You, Always With M.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\05_Joe Satriani-Satch Boogie.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\06_Joe Satriani-Hill Of The Skull.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\07_Joe Satriani-Circles.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\08_Joe Satriani-Lords Of Karma.mp3"
  "X:\\tmp\\Surfing_With_The_Alien\\09_Joe Satriani-Midnight.mp3")
-----Songs----
'("Echo"
  "Surfing With The Alien"
  "Ice 9"
  "Crushing Day"
  "Always With You, Always With Me"
  "Satch Boogie"
  "Hill Of The Skull"
  "Circles"
  "Lords Of Karma"
  "Midnight")
----Track#8---
'(("Lords Of Karma"
   "8"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other"))
--All-Tracks--
'(("Echo"
   "10"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Surfing With The Alien"
   "1"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Ice 9"
   "2"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Crushing Day"
   "3"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Always With You, Always With Me"
   "4"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Satch Boogie"
   "5"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Hill Of The Skull"
   "6"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Circles"
   "7"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Lords Of Karma"
   "8"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other")
  ("Midnight"
   "9"
   "Joe Satriani"
   "Surfing With The Alien"
   "1987"
   "Other"))
   ```
   

## Basic ID3v2 header structure illustration

![ID3-header_www.beaglebuddy.com][screen1]
Borrowed [here][image_source]

<!-- Links -->
[screen1]: http://www.beaglebuddy.com/content/pages/javadocs/resources/mp3_format_ID3v2.3.gif
[image_source]: http://www.beaglebuddy.com/content/pages/javadocs/index.html?com/beaglebuddy/id3/v23/ID3v23TagHeader.html
