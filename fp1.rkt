;;Student Name: Ebenezer Ampadu
;; Mock-Blog: information -> information

#lang web-server/insta

(define (start request)
  (response/xexpr
   '(html
     (head (title "Ebs Sports Blog"))
     (body (h1 "Welcome to Ebenezer's Sports Blog --" (h1 (center "The Blog for Champions")))
           (h1 "Today's Post")
           (p, "The Tigers drastically defeated
the Raging Lions 4 - 1. The battle raged
on for hours, until Brett Droscol scored
in the 21st minute: an opener for the
indispensable Tigers.")
           (p, "Goal number 2, delivered by
Ameke Barnes, arrived in the 31st minute, and
caused the Raging Lions great distress.
It did not take long before Rikard Helmot dribbled from
 the midfield everyone in sight, including the goal keeper for the Tigers
to get an opener for the Lions. The score became 2-1 in favor of the Tigers. The game retired a little until the
second half, when Messa Livingston was brought down in the penalty area of the Lions.
He decided to take the kick himself amid the spectators cheers' signaling him to go
to bench to see to his injuries. He brought the scores to 3-1 to the displeasure of the Lion's fans, who were
already bemoaning their fate at the hands of the versatile Tigers. The final goal was scored by Dave Harrington who
was brought on as a substitute in the final moments.")
(p, (h1 "Yesterday's Post"))
(p, (div "Maria Mascot Defeats Anna Mullosk in the Tennis Open"))))))

 