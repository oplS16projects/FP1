## My Library: ** web_blog.rkt **

My name: ** Ebenezer Ampadu **


A simple web server / blog application was implemented. The material on the Dr. Racket site for building a web server or blog was thoroughly read for understanding and the code implemented using the basic tags of HTML that are also applicable in Scheme.
For example, <head>, <title> in HTML, have similar tags in Scheme as head, title, (head ..., (title..., depending on whether one is using Quasiquotation or Aplomb syntax.

The web server begins with a header: #lang web-server/insta which is a way of obtaining a servlet
to run in the web server by using the INSTA language.

The start request is to start a new web server.

The other commands are the parallels of html tags in the scheme language, using either the Quasiquotation
syntax. For example, <head> in html is head in aplomb.

Output:
==========
** Welcome to Ebenezer's Sports Blog -- **

** The Blog for Champions **

** Today's Post **

The Tigers drastically defeated the Raging Lions 4 - 1. The battle raged on for hours, until Brett Droscol scored in the 21st minute: an opener for the indispensable Tigers.

Goal number 2, delivered by Ameke Barnes, arrived in the 31st minute, and caused the Raging Lions great distress. It did not take long before Rikard Helmot dribbled from the midfield everyone in sight, including the goal keeper for the Tigers to get an opener for the Lions. The score became 2-1 in favor of the Tigers. The game retired a little until the second half, when Messa Livingston was brought down in the penalty area of the Lions. He decided to take the kick himself amid the spectators cheers' signaling him to go to bench to see to his injuries. He brought the scores to 3-1 to the displeasure of the Lion's fans, who were already bemoaning their fate at the hands of the versatile Tigers. The final goal was scored by Dave Harrington who was brought on as a substitute in the final moments.


** Yesterday's Post **


Maria Mascot Defeats Anna Mullosk in the Tennis Open
