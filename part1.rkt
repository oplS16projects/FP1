#lang racket
(require simple-qr)

;;auto makes a qr for the main source of simple-qr
(qr-code "https://github.com/simmone" "gitSource.png")
;;auto makes a qr for my github
(qr-code "https://github.com/alexcushing" "myGitHub.png")
;;auto makes a qr for the part one page of github that I forked for this
(qr-code "https://github.com/alexcushing/FP1" "ExplorationPartOne.png")

;;asking the user to imput a string so that
;;they can create their own qr code
;;they can also name it themselves
(define (makeQRForME mystring namestring)
  (qr-code mystring (string-append namestring ".png")))

(define count 0)
;;if user wants to add a list of websites and make
;;QRs for each one
(define (addqrlist lst)
  (let loop ((rest lst)
             (count 0))
    (unless (null? rest)
      (makeQRForME (car rest) (format "stringQR~a" count))
      (loop (cdr rest) (add1 count)))))
