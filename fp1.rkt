;; Patrick Donegan

#lang racket


(require data/ring-buffer)

(define rb (empty-ring-buffer 6))

(ring-buffer-length rb)
(ring-buffer? rb)

(ring-buffer-push! rb 1)
(ring-buffer-push! rb 2)
(ring-buffer-push! rb 3)
(ring-buffer-push! rb 4)
(ring-buffer-push! rb 5)
(ring-buffer-push! rb 6)
(for/list ([v rb]) v)
(ring-buffer-push! rb 7)
(for/list ([v rb]) v)

(ring-buffer-ref rb 2)

(ring-buffer-set! rb 2 99)

(for/list ([v rb]) v)

