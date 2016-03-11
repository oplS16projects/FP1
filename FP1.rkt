#lang racket
(require net/url)

;I recently set up a piece of software (m.jdbjohnbrown.net) that used php _POST functions to retrieve data from a SQL table.
;I wanted to experiment and see if I could pull out the data using racket.
;The information held in the database is player stats and information for a hockey team I play for.
;I pull this information using a series of commands from net/url. Notably post-pure-port (pain in the butt figuring out how to use it. The internet was useless for once.)
;From here, I load this information into a "player object" with create-player, and access it with various selectors; as well as a display function
(define base "http://jdbjohnbrown.net/gameSync.php")
(define my-site (string->url base))
(define Header (list "Content-Type: application/x-www-form-urlencoded"))
(define target-post (string->bytes/utf-8 (format "f=tgn&id=1")))


;Secondaly, I enjoy writing parsing algorithms, and I did not want to start using a new library. The HTML parsing library wasn't working the way I wanted fast enough.
;This pulls the HTML code from the website which holds the stats and standings for various teams. (The website is poorly and inconsistantly made, so parsing was a trick at points.)
;For this I used a different driving function to retrieve the HTML: get-pure-port
;From here, I parsed the output with custom tailored code, and sorted the leaderboard into a list of "Team objects" which have a display function
(define HT-string "http://hockeytownsaugus.com/monstrt.htm")
(define HT-site (string->url HT-string))
(define HT-port (get-pure-port HT-site))
(define HT-html (port->string HT-port))
(close-input-port HT-port)


;Code that directly contacts my website for the first segment.
;Seriously, try to figure out how to do this with no prior knowledge and the internet is NO help.
;Anyways, this uses post-pure-port to send data to a .php file which then appropriately access a SQL database.
;The information sent is "f=tgn" which tells it to return info from the FUNCTION that gets player info
;also sends "id=x" so that it knows which player to recieve. Anything over 12 will return an empty string
(define (get-player-string x)
  (define in
  (post-pure-port my-site (string->bytes/utf-8 (format (string-append "f=tgn&id=" (number->string x)))) Header) )
  (begin0
  (port->string in)
  (close-input-port in)))


;This searches a string [s] (starting at n) and returns the first location where the character c appears.
;This is more or less redundant with my later instr, but I wrote this for the first segment, and it didn't apply to the second
(define (string-find s c n)
  (if (eq? (string-ref s n) c) n (if (= (+ n 1) (string-length s)) -1 (string-find s c (+ 1 n)))))

;You know, I'm sure these functions MUST exist, but I couldn't find them and it was just faster to write them
;instr searches the string for the substring starting at postion i. j should always be zero at start.
(define (instr string sub i j)
  (if (= i (string-length string)) -1
  (if (= j (string-length sub)) (- i j)
  (if (eq? (string-ref string i) (string-ref sub j)) (instr string sub (+ i 1) (+ j 1)) (instr string sub (+ i 1) 0)) 
      )))

;displays an object created with create-player
(define (display-player x)  
  (displayln (string-append (get-firstname x) " " (get-lastname x)))
  (displayln (string-append "Number: " (get-number x)))
  (displayln (string-append "Position: " (get-position x)))
  (displayln (string-append "Goals: " (get-goals x)))
  (displayln (string-append "Assists: " (get-assists x)))
  (displayln (string-append "Points: " (get-points x)))
  )

;parses the data from get-player-string
;places the data into an list with the form (firstname lastname (number position) (goals assists points))
(define (create-player x)
  (define s (get-player-string x))
  (define a (string-find s #\, 0))
  (define f (substring s 0 a))
  (define l (substring s (+ a 1) (string-find s #\, (+ a 1))))
  (set! a (+(string-find s #\, (+ a 1)) 1))
  (set! a (+(string-find s #\, (+ a 1)) 1))
  (define num (substring s a  (string-find s #\, (+ a 1))))
  (set! a (+(string-find s #\, (+ a 1)) 1))
  (define pos (substring s a  (string-find s #\, (+ a 1))))
  (set! a (+(string-find s #\, (+ a 1)) 1))
  (define g (substring s a  (string-find s #\, (+ a 1))))
  (set! a (+(string-find s #\, (+ a 1)) 1))
  (define as (substring s a  (string-find s #\, (+ a 1))))
  (set! a (+(string-find s #\, (+ a 1)) 1))
  (define p (substring s a  (- (string-length s) 2)))
  (list f l (list num pos) (list g as p))
  )

;various selectors for the data held in the player objects. Used in display-player
(define (get-firstname x) (car x))
(define (get-lastname x) (cadr x))
(define (get-fullname x) (string-append (get-lastname x) ", " (get-firstname x) )) ;well actually i never use this one but i wrote it anyways
(define (get-number x) (car (third x)))
(define (get-position x) (cadr (third x)))
(define (get-goals x) (car (cadddr x)))
(define (get-assists x) (cadr (cadddr x)))
(define (get-points x) (caddr (cadddr x)))



;primary code for second code.
;Takes a string containing the HTML code from the HockeyTown website
;uses two loops. One is the primary one and it looks for key phrases to find the name of the team
;after that it loops looking for the next 8 appropriate values before returning to loking for a team name.
;places these strings into a flat list per team, which are joined into one master list of teams.
(define (parse-HT in)  
  (define out (substring in (instr in "Team" 0 0) (instr in "Scores" 0 0)))  
  (define (stats x arr n)
    (define a (+ (instr x "auto-style20" 0 0) 12))
    (set! a (+(instr x ">" a 0) 1))
    (define b (instr x "</td>" a 0))
    (if (> n 8) arr
    (if (> b -1) (stats (substring x b (string-length x)) (append arr (list (string-trim (substring x a b)))) (+ n 1)) arr) 
    ))     
  (define (loop x end)
    (define a (+ (instr x "width: 172px" 0 0) 12))
    (set! a (+(instr x ">" a 0) 4))
    (define b (instr x "</td>" a 0))    
    (if (> b -1)
    (if (> (instr (substring x b) end 0 0) -1)
    (cons (stats (substring x b (string-length x)) (list (substring x a b)) 1 ) (loop (substring x (instr x "tr" b 0) (string-length x)) end)) 
    '())'()))
 (loop out "table") 
)


;This is the "main driver" of the second code. 
(define HTTeams (parse-HT HT-html))


;Prints out a selected team from HTTeams.
;x lets you pick which number you want to display. The loop calls cdr x-1 times.
;This then prints out the list in a stylized way.
(define (print-team x)
  ;This code is terribly sloppy. I did not divide the object into subgroups, so 8 cdrs and one car are needed to access the last string.
  ;Something for next time.
  (define (loop n lst)
    (if (= n 0) (car lst) (loop (- n 1) (cdr lst))))
  (define a (loop (- x 1) HTTeams))
  (display "Team: ")
  (displayln (car a))
  (displayln (string-append "W/L/T: " (cadr a) "/"  (caddr a) "/" (cadddr a)))
  (displayln (string-append "Points: " (cadddr (cdr a))))
  (displayln (string-append "Goals For: " (cadddr (cddr a))))
  (displayln (string-append "Goals Against: " (cadddr (cdddr a))))
  (displayln (string-append "Games Played: " (cadddr (cddddr a))))
  (displayln (string-append "Point Percentage: " (cadddr (cddddr (cdr a
                                                                      )))))
  )

(display-player (create-player 1))
(displayln "")
(display-player (create-player 6))
(displayln "")
(print-team 5)
(displayln "")
(print-team 3)
