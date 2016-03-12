#lang racket
(require midi-readwrite)

;; Opens a MIDI file saved in current directory, and 
;; makes a list of the data
(define song (midi-file-parse "FourLetterWord.mid"))

;; Filters said file and returns a list of all the notes
(define notes (MIDIFile->notelist song))

(track->notes notes)