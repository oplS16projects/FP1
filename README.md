# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

#My Library: rsound
My Name: David Benoit

What I did: 

I created an interface to rsound that allows programmers to express rsounds as music theory elements, enabling them to think like musicians as they program with the rsound library. 

Here are some examples of useful procedures the API provides:

```
;; Take a note letter name and its octave 
;; and create a piano-tone rsound
(define (piano-note note octave)
  (piano-tone (note-to-midi-number note octave)))

;; Take multiple note rsounds
;; put them in sequence to create
;; a melody rsound
(define (create-melody n1 . note-end)
  (rs-append* (cons n1 note-end)))

;; Take multiple note rsounds
;; overlay them to create
;; a harmony(chord) rsound
(define (create-harmony n1 . note-end)
  (rs-overlay* (cons n1 note-end)))

;; Take an rsound and create a note that has the
;; duration of a quarter note
(define (quarter-note note)  
  (clip note 0 (round (* whole-note-length 0.25))))

;; Take an rsound and create a note that has the
;; duration of an eighth note
(define (eighth-note note)
  (clip note 0 (round (* whole-note-length 0.125))))


```

I also wrote a program to build and play an exerpt from Bach's Well Tempered Clavier to demonstrate the music theory interface.  The program both plays a generated audio clip and displays a waveform image of the Bach exerpt.

Here are some code snippets of the exerpt program:

```

;; Create the first measure
(define prelude-measure1
 ;; Consolidate the voices into harmonies
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 6))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 6))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'E 5))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'E 5)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'C 5))
      (half-note (piano-note 'C 5)))))
```

```
;; Draw a waveform in a new window
(rs-draw Bach-exerpt)

;; Play Bach
(play Bach-exerpt)

```

Here is a picture of the waveform:

![Image of Waveform](https://github.com/benoid/FP1/blob/master/generated/waveform.png)

Here is a link to a .wav file generated by the program:
![Bach Exerpt Audio](https://github.com/benoid/FP1/blob/master/generated/bach-exerpt.wav)
