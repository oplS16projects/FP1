#lang racket

(require 2htdp/image)

;; freeze allows for images containing many sub-images to be displayed more efficiently, making it perfect for fractal drawings
(define (sierpinski-squares n)
  (if (zero? n)
      (square 5 "solid" "black")
      (local ((define x (sierpinski-squares (- n 1)))
              (define y (square (image-width x) "solid" "yellow")))
        (freeze (above (beside x x x)
                       (beside x y x)
                       (beside x x x))))))

(define (sierpinski n)
  (if (zero? n)
    (triangle 10 "solid" "blue")
    (let ((x (sierpinski (- n 1))))
      (freeze (above x (beside x x))))))

(define (koch n)
  (if (zero? n)
      (square 10 "solid" "red")
      (local ((define smaller (koch (- n 1))))
        (beside/align "bottom"
                   smaller
                   (rotate 60 smaller)
                   (rotate -60 smaller)
                   smaller))))
