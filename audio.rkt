#lang racket

(require rsound)

; scrobble: number number number -> signal
; return a signal that generates square-wave tones, changing
; at the given interval into a new randomly-chosen frequency
; between lo-f and hi-f
(define (scrobble change-interval lo-f hi-f)
  (local
    [(define freq-range (floor (- hi-f lo-f)))
     (define (maybe-change f l)
       (cond [(= l 0) (+ lo-f (random freq-range))]
             [else f]))]
    (network ()
             [looper <= (loop-ctr change-interval 1)]
             [freq = (maybe-change (prev freq 400) looper)]
             [a <= square-wave freq])))

(define my-signal
  (network ()
           [a <= (scrobble 4000 200 600)]
           [b <= (scrobble 40000 100 200)]
           [lpf-wave <= sine-wave 0.1]
           [c <= lpf/dynamic (max 0.01 (abs (* 0.5 lpf-wave))) (+ a b)]
           [b = (* c 0.1)]))

; write 20 seconds to a file, if uncommented:
; (rs-write (signal->rsound (* 20 44100) my-signal) "/tmp/foo.wav")

; play the signal
(signal-play my-signal)
