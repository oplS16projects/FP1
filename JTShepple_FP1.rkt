#lang racket

(require teachpacks/racket-turtle)

(define colors1 (list "red" "blue" "green" "yellow" "purple" "orange"))
(define colors2 (list "red" "blue" "green" "yellow"))
(define colors3 (list "red" "blue" "red" "blue"))

 
(define (side x pensize a)
  (list (forward x)(change-pen-size pensize)(turn-left a)))
 
(define (spiral2 x pensize a number)
  (if (<= number 0)
      empty
      (cons (side x pensize a)
            (spiral2 (+ x 7) (+ pensize 1) a (sub1 number)))))


(define spiral-image2 (list (change-bg-color "black")
                            (change-color colors1)
                            
                            (spiral2 1 1 60 36)))



(define (spiral3 x pensize a number)
  (if (<= number 0)
      empty
      (cons (side x pensize a)
            (spiral3
             (+ x 7)
             
             (if (= (remainder number 4) 0)
                 (+ pensize 1)
                 pensize)   ;#f
             
                 a         
                 (sub1 number)))))


(define spiral-image3 (list (change-bg-color "black")
                            (change-color colors2)
                            (spiral3 1 2 90 54)))



(define (spiral4 x pensize a number)
  (if (<= number 0)
      empty
      (cons (side x pensize a)
            (spiral4 (+ x 1) pensize a (sub1 number)))))


(define spiral-image4 (list (change-bg-color "black")
                            (change-color colors3)
                            (spiral4 1 20 90 300)))


(draw spiral-image2)
(draw spiral-image3)
(draw spiral-image4)


