#lang racket
(require pict)

;;
;; Cody Mulkern
;; Library: pict
;;
;; These commented out pieces of code were tests to see how the thermometer function worked.
;;
;;
;;
;(define monday (thermometer #:height-% 0.8
 ;              #:stem-height 180
  ;             #:color-% 1
   ;            #:ticks 20
    ;           #:bottom-circle-diameter 40
     ;          #:top-circle-diameter 20
      ;         #:mercury-inset 4))
;(define tuesday (thermometer #:height-% 1/4
 ;              #:stem-height 180
  ;             #:color-% 1/3
   ;            #:ticks 20
    ;           #:bottom-circle-diameter 40
     ;          #:top-circle-diameter 20
      ;         #:mercury-inset 4))

;;This fucntion just takes the temperature and returns a fraction for the thermometer to use
;;
;;I had to return fractions because parts of the function on work with fractions some are mixed and can take decimals
;;but it was easier to just go fractions across the board.
;;
(define (getTemp temp)
  (/ temp 100)
)

;;This takes the day as a string and the temperature and will return a pair with the day and a thermometer with the temperature.
;;
;;The height is determined by the temperature provided and will fill to the appropriate level.
;;
;;The color of the thermometer is also based off of the temperature it will become more grayish as the temperature goes down.
;;
;;I did 20 ticks and the temperature is based off of 0 - 100 degrees F
;;
(define (makeDay day temp)
  (cons day (cons (thermometer #:height-% (getTemp temp)
               #:stem-height 150
               #:color-% (getTemp temp)
               #:ticks 20
               #:bottom-circle-diameter 40
               #:top-circle-diameter 20
               #:mercury-inset 4) '()))
)

;;
;;Make week just make a list of all of the days so they can be displayed like the weather on TV
;;
(define (makeWeek)
  (list sunday monday tuesday wednesday thursday friday saturday)
)

;;
;;This was just easier than typing into the REPL over and over so I could test my functions
;;
(define sunday (makeDay "Sunday" 80))
(define monday (makeDay "Monday" 65))
(define tuesday (makeDay "Tuesday" 70))
(define wednesday (makeDay "Wednesday" 55))
(define thursday (makeDay "Thursday" 30))
(define friday (makeDay "Friday" 60))
(define saturday (makeDay "Saturday" 90))


;;
;;This will make a week called week and if you type week into the REPL it will display the week.
;;(It is very wide so on a small monitor you might not be able to see it in one line.)
;;
;;(define week (makeWeek))
;;