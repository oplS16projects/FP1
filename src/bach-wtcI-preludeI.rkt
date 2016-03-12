;; Copyright (C) David Benoit 2016
;;
;; Author: David Benoit
;;
;; File: bach-wtcI-prelude-I.rkt
;;
;; Description: An exerpt from Bach's WTC Book I Prelude I
;;              Programmed in Racket using the rsound library
;;              
;;              

#lang racket
(require rsound)
(require rsound/piano-tones)
(require rsound/draw)
(require "rsound-music-theory.rkt")

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

;; Create the second measure
(define prelude-measure2
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'C 5))
      (half-note (piano-note 'C 5)))))

;; Create the third measure
(define prelude-measure3
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'B 4))
      (half-note (piano-note 'B 4)))))

;; Create the fourth measure
(define prelude-measure4
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

;; Create the fifth measure
(define prelude-measure5
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'E 6))
    (sixteenth-note (piano-note 'A 6))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'E 6))
    (sixteenth-note (piano-note 'A 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'E 6))
    (sixteenth-note (piano-note 'A 6))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'E 6))
    (sixteenth-note (piano-note 'A 6)))
    
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

;; Create the sixth measure
(define prelude-measure6
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'C 5))
      (half-note (piano-note 'C 5)))))

;; Create the seventh measure
(define prelude-measure7
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'G 6))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'G 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'G 6))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'G 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 5)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'B 4))
      (half-note (piano-note 'B 4)))))

;; Create the eighth measure
(define prelude-measure8
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'C 5))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'C 5)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'B 4))
      (half-note (piano-note 'B 4)))))

;; Create the ninth measure
(define prelude-measure9
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'C 5))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'C 5)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'A 4))
      (half-note (piano-note 'A 4)))))

;; Create the tenth measure
(define prelude-measure10
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'C 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F# 5))
    (sixteenth-note (piano-note 'C 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'A 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'A 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'D 4))
      (half-note (piano-note 'D 4)))))

(define prelude-measure11
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'B 5))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'B 5))
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'B 5))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'B 5)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'B 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'B 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'G 4))
      (half-note (piano-note 'G 4)))))

;; Create the twelfth measure
(define prelude-measure12
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C# 6))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C# 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C# 6))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C# 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'Bb 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'Bb 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'G 4))
      (half-note (piano-note 'G 4)))))

;; Create the thirteenth measure
(define prelude-measure13
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'A 5))
    (sixteenth-note (piano-note 'D 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'A 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'A 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'F 4))
      (half-note (piano-note 'F 4)))))


;; Create the fourteenth measure
(define prelude-measure14
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'B 5))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'B 5))
    (eighth-note rest)
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'B 5))
    (sixteenth-note (piano-note 'D 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'B 5)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'Ab 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'Ab 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'F 4))
      (half-note (piano-note 'F 4)))))

(define prelude-measure15
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (eighth-note rest)
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'G 5))
    (sixteenth-note (piano-note 'C 6)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'G 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'G 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'E 4))
      (half-note (piano-note 'E 4)))))

;; Create the sixteenth measure
(define prelude-measure16
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5))
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'F 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'F 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'E 4))
      (half-note (piano-note 'E 4)))))

;; Create the seventeenth measure
(define prelude-measure17
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5))
    (eighth-note rest)
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'A 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'F 5)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'F 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'F 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'D 4))
      (half-note (piano-note 'D 4)))))

;; Create the eighteenth measure
(define prelude-measure18
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'B 4))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'B 4))
    (sixteenth-note (piano-note 'F 5))
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'B 4))
    (sixteenth-note (piano-note 'F 5))
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'B 4))
    (sixteenth-note (piano-note 'F 5)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'D 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'G 3))
      (half-note (piano-note 'G 3)))))

;; Create the ninteenth measure
(define prelude-measure19
  (create-harmony
  ;; Create soprano voice
   (create-melody
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'E 5))
    (eighth-note rest)
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'E 5))
    (sixteenth-note (piano-note 'G 4))
    (sixteenth-note (piano-note 'C 5))
    (sixteenth-note (piano-note 'E 5)))
    
   ;; Create alto voice
   (create-melody
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'E 4))
    (sixteenth-note rest)
    (double-dotted-quarter-note (piano-note 'E 4)))
   ;; Create bass voice
   (create-melody
     (half-note (piano-note 'C 4))
      (half-note (piano-note 'C 4)))))

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
