#lang racket

; for job queue
(require job-queue)

; for prime?
(require math)

; prints the given value if it is prime
(define (print-if-prime n)
  (unless (not (prime? n)) (display n) (newline)))

; creates a closure around a procedure that prints the given value if it is prime
(define (create-prime-proc n)
  (λ () (print-if-prime n)))

; calculates and displays all primes between 2 and the given max-prime
; uses multi-threading with a maximum number of threads specified by max-threads
(define (calc-primes max-prime max-threads)
  (define primes-queue (make-job-queue max-threads))
  (for ([i (+ max-prime 1)])
    (submit-job! primes-queue (create-prime-proc i))))