#lang racket
(require binary-class/mp3)

(define mp3-list (filter
                  file-exists?
                  (map
                   path->string
                   (directory-list
                    "X:\\tmp\\Surfing_With_The_Alien"
                    #:build? #t))))

(define ID3-db (map (λ(x)(read-id3 x))
                    mp3-list)) 

(define songs (map (λ(x)(song x)) ID3-db))

(define (tag track-num) (filter (λ(x)(equal? track-num
                                             (track x)))
                                ID3-db))

(define (show-tags tag-lst)
  (map (λ(x)(list (song x)
                  (track x)
                  (artist x)
                  (album x)
                  (year x)
                  (genre x))) tag-lst))

(display "-----Files----\n")
mp3-list                    ;mp3 file list
(display "-----Songs----\n")
songs                       ;output only song names
(display "----Track#8---\n")
(show-tags (tag "8"))       ;output tag for mp3 with ID3 track #8
(display "--All-Tracks--\n")
(show-tags ID3-db)          ;output all tags