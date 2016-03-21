#lang racket

(require net/url)


(define myurl (string->url "http://bruins.nhl.com/club/stats.htm"))
(define myport (get-pure-port myurl))


(define teststring "P. Bergeron</a></td>
		<td class=\"gp\">67</td>
		<td class=\"goals\">28</td>
		<td class=\"assts\">33</td>
		<td class=\"plusminus\">14</td>		
		<td class=\"pts\">61</td>")

(define get-gamesplayed ".*\"gp\">..<")

;(regexp-match #rx"P. Bergeron.*[0-9][0-9]" #rx"</tr>"  myport)
;This reads in the stats from the bruins website

;; Using regular expressions I can generate a function that can create a skater
;; Object when given a name.
;(regexp-match* #rx"x(.)" "12x4x6")
;(define bergeron-stats
  

(list "P. Bergeron"
      (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match* #rx"P. Bergeron.*\"gp\">..<" myport))))
      (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match #rx"goals\">..<" 
                                                 (car (regexp-match #rx"P. Bergeron.*\"goals\">..<" teststring))))))
      (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match #rx"assts\">..<" 
                                                 (car (regexp-match #rx"P. Bergeron.*\"assts\">..<" teststring))))))
       (car (regexp-match #rx"[0-9][0-9]" (car (regexp-match #rx"plusminus\">..<" 
                                                 (car (regexp-match #rx"P. Bergeron.*\"plusminus\">..<" teststring)))))))



(regexp-match* #rx"P. Bergeron.*\"gp\">..<" myport)



;(define bergeron-goals (car (regexp-match* #rx"P. Bergeron.*\"goals\">..<" teststring)))
;(regexp-match "example" "this is an example")

;(regexp-match-positions "P. Bergeron" myport)

;(regexp-match-peek "P. Bergeron</a></td>
;		<td class=\"gp\">" myport 2)


(define (make-skater Name GamesPlayed Goals Assists PlusMinus)
  (list Name GamesPlayed Goals Assists PlusMinus))

(define (make-goalie Name Number GamesPlayed Min GAA SavePercentage)
  (list Name Number GamesPlayed Min GAA SavePercentage))

(define (make-team) '())

(define (add-player-to-team team player) (append team player))


