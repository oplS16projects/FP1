#lang racket
(require data/ring-buffer)

(define ring (empty-ring-buffer 5))

(define (fill-ring-buffer rb value)
  (define (helper rb v count size)
    (if (> count size)
        rb
        (helper (and (ring-buffer-push! rb v) rb) v (+ count 1) size)))
  (helper rb value 0 (ring-buffer-length rb)))