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

;; Take multiple harmony/chord rsounds
;; put them in sequence to create
;; a progression
(define create-progression create-melody)

;; Take multiple note rsounds
;; overlay them to create
;; a harmony(chord) rsound
(define (create-harmony n1 . note-end)
  (rs-overlay* (cons n1 note-end)))

;; Take an rsound and create a note that has the
;; duration of a whole note
(define (whole-note note)
  (clip note 0 whole-note-length))

;; Take an rsound and create a note that has the
;; duration of a half note
(define (half-note note)
  (clip note 0 (round (* whole-note-length 0.5))))

;; Take an rsound and create a note that has the
;; duration of a quarter note
(define (quarter-note note)  
  (clip note 0 (round (* whole-note-length 0.25))))

;; Take an rsound and create a note that has the
;; duration of an eighth note
(define (eighth-note note)
  (clip note 0 (round (* whole-note-length 0.125))))

;; Take an rsound and create a note that has the
;; duration of a sixteenth note
(define (sixteenth-note note)
  (clip note 0 (round (* whole-note-length 0.0625))))

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
;; Put the measures together into
;; a single rsound and apply reverb
(define Bach-exerpt
  (rs-filter
   (create-progression
     prelude-measure1
     prelude-measure2
     prelude-measure3
     prelude-measure4
     prelude-measure5
     prelude-measure6
     prelude-measure7
     prelude-measure8
     prelude-measure9
     prelude-measure10
     prelude-measure11
     prelude-measure12
     prelude-measure13
     prelude-measure14
     prelude-measure15
     prelude-measure16
     prelude-measure17
     prelude-measure18
     prelude-measure19)
    reverb)) 

;; Draw a waveform in a new window
(rs-draw Bach-exerpt)

;; Play Bach
(play Bach-exerpt)

```

Here is a picture of the waveform:

