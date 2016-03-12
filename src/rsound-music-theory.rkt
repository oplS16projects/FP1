;; Copyright (C) David Benoit 2016
;;
;; Author: David Benoit
;;
;; File: rsound-music-theory.rkt
;;
;; Description: A Programmable Music Theory 
;;              Interface for Racket's rsound 
;;              library. 
;;


#lang racket
(require rsound)
(require rsound/piano-tones)

;; Provide procedures
(provide letter-note-to-number)
(provide note-to-midi-number)
(provide piano-note)
(provide whole-note-length)
(provide create-melody)
(provide create-progression)
(provide create-harmony)
(provide whole-note)
(provide doted-half-note)
(provide half-note)
(provide double-dotted-quarter-note)
(provide dotted-quarter-note)
(provide quarter-note)
(provide dotted-eighth-note)
(provide eighth-note)
(provide dotted-sixteenth-note)
(provide sixteenth-note)
(provide thirtysecond-note)
(provide rest)
(provide create-beat)


;; Take a note letter name and convert it
;; to its relative midi representation 0-11
(define (letter-note-to-number note)
  (cond ((eq? note 'C) 0)
        ((eq? note 'C#) 1)
        ((eq? note 'D) 2)
        ((eq? note 'D#) 3)
        ((eq? note 'Eb) 3)
        ((eq? note 'E) 4)
        ((eq? note 'F) 5)
        ((eq? note 'F#) 6)
        ((eq? note 'Gb) 6)
        ((eq? note 'G) 7)
        ((eq? note 'G#) 8)
        ((eq? note 'Ab) 8)
        ((eq? note 'A) 9)
        ((eq? note 'A#) 10)
        ((eq? note 'Bb) 10)
        ((eq? note 'B) 11)
        (else -1)))

;; Take a note and octave and convert it to
;; its exact midi number
(define (note-to-midi-number note octave)
  (+ (* octave 12) (letter-note-to-number note)))

;; Take a note letter name and its octave and create a
;; piano-tone rsound
(define (piano-note note octave)
  (piano-tone (note-to-midi-number note octave)))

;; Determine the the length  of a whole note
(define whole-note-length
  (* (rs-frames (piano-note 'C 5)) 1))

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

;; Scale the duration an rsound
;; by scale-factor.  
(define (scale-duration note scale-factor)
  (clip note
        0
        (round (* (rs-frames note) scale-factor))))

;; Take an rsound and create a note that has the
;; duration of a whole note
(define (whole-note note)
  (clip note 0 whole-note-length))

;; Take an rsound and create a note that has the
;; duration of a half note
(define (half-note note)
  (clip note 0 (round (* whole-note-length 0.5))))

;; Take an rsound and create a note that has the
;; duration of a dotted half note
(define (doted-half-note note)
  (clip note 0 (round (* whole-note-length 0.75))))

;; Take an rsound and create a note that has the
;; duration of a quarter note
(define (quarter-note note)  
  (clip note 0 (round (* whole-note-length 0.25))))

;; Take an rsound and create a note that has the
;; duration of a dotted quarter note
(define (dotted-quarter-note note)
  (clip note 0 (round (* whole-note-length 0.375))))

;; Take an rsound and create a note that has the
;; duration of a double dotted quarter note
(define (double-dotted-quarter-note note)
  (clip note 0 (round (* whole-note-length 0.4375))))

;; Take an rsound and create a note that has the
;; duration of an eighth note
(define (eighth-note note)
  (clip note 0 (round (* whole-note-length 0.125))))

;; Take an rsound and create a note that has the
;; duration of a dotted eighth note
(define (dotted-eighth-note note)   
  (clip note 0 (round (* whole-note-length (+ 0.1875)))))

;; Take an rsound and create a note that has the
;; duration of a sixteenth note
(define (sixteenth-note note)
  (clip note 0 (round (* whole-note-length 0.0625))))

;; Take an rsound and create a note that has the
;; duration of a dotted sixteenth note
(define (dotted-sixteenth-note note)
  (clip note 0 (round (* whole-note-length 0.09375))))

;; Take an rsound and create a note that has the
;; duration of a thirtysecond (1/32) note
(define (thirtysecond-note note)
  (clip note 0 (round (* whole-note-length 0.03125))))

;; Create a rest rsound the length of a whole note
(define rest
  (silence whole-note-length))

;; Take notes and rests and combine them
;; sequentially to form a beat
(define (create-beat n1 n2 . note-end)
  (rs-append* (cons n1 (cons n2 note-end))))


