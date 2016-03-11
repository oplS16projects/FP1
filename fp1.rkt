#lang racket
 
(require pict3d
         pict3d/universe)
 
(current-material (material #:ambient 0.01
                            #:diffuse 0.89
                            #:specular 0.6
                            #:roughness 0.1))
 
(define lights+camera
  (combine (light (pos 0 1 2) (emitted 1.0 1.0 0.0 1.0))
           (light (pos 1 -1 -2) (emitted 1.0 1.0 0.0 1.0))
           (basis 'camera (point-at (pos 1 1 0) origin))))
 
(define (on-draw s n t)
  (combine (rotate-z (rotate-y (rotate-x (transform (cube origin 2/5) (affine-compose (move-y (/ (cos (/ t 1000)) 2)) (move-z (/ (sin (/ t 1000)) 2)))) (/ t 20)) (/ t 20)) (/ t 20)) 
           lights+camera))
 
(big-bang3d 0 #:on-draw on-draw)