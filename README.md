
## My Library: slideshow/play
My name: Andry Lora


  The library that I tried was the slideshow/play library.The reason I picked this library was because as soon as I saw it the idea of going from a simple text document to a slideshow came to mind.At the beginning I read the documentation on how to make simple slides and there were multiple ways of doing so, such as declaring slides one at a time or using an integer n to repeatedly make them.I chose to make one at a time in order to alter them individually and be able to see the changes.
  
  The first slide I used "item" to create multiple list elements and see how the transitioning between items were.Within this same slide I created lines in between each element using "hline" and giving it a width and the spacing between the line and any other objects such as text and other lines this can be seen in figure 1 below.
  
 
  
  ![Alt text](https://github.com/andrylr/FP1/blob/master/slide1.png)
   <p align="center">Figure 1 </p>
  
  
  For the second slide I looked at the documentation and saw that the current library has element of the pict library which is used in order to change the font size and what font is used in the slideshows.I then used the pict functions to change the font and the positioning of the text this ca be seen in the code segment below and also in figure 2.
  
  ```racket 
  #lang slideshow
  (require slideshow/play)
  
  (slide
 #:title "Slide 2"
(text "Lets try some font changes" (cons 'bold 'roman) 50)
(text "diagonal" null 50 (* 2 2))
(text "other diagonal" null 50 (* 2 1)))
```
![Alt text](https://github.com/andrylr/FP1/blob/master/slide2.png)
   <p align="center">Figure 2 </p>


The next few slides after the second one were used in order to see how the transitions looked based on text sizes using lambda functions.The transitions seemed delayed because it took some time for the text to begin appearing, I tried changing some of the values but it seems that there are specific integers that it would only accept.
  

