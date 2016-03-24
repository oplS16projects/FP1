#lang racket
(require simple-qr)

;; format of the qr-code command:
;;(qr-code      data	 	 	 	 
;; 	 	output_file_path	 	 	 	 
;; 	 	#:mode mode	 	 	 	 
;; 	 	#:error_level error_level	 	 	 	 
;; 	 	#:module_width module_width)
;;  data : (string?)
;;  output_file_path : (path-string?)
;;  mode : string? (Alphanumeric Mode use #:mode "A" or Numeric Mode use #:mode "N")
;;  error_level : string? (error-correct level, use #:error_level to specify a new one("L" "M" "Q" "H"))
;;  module_width : exact_nonngegative-integer?
(qr-code "https://github.com/" "normal.png")
 
(qr-code "https://github.com/" "small.png" #:module_width 2)
 
;;(qr-code "https://github.com/" "alpha.png" #:mode "A")

(qr-code "https://github.com/" "errorL.png" #:error_level "L")

(qr-code "https://github.com/" "errorM.png" #:error_level "M")

(qr-code "https://github.com/" "errorQ.png" #:error_level "Q")

(qr-code "https://github.com/" "errorH.png" #:error_level "H")
