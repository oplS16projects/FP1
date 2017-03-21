#lang scheme

; The sudoku board data structure is a list of rows, numbered 1-9.
; Columns are 1-9, left to right.
; Boxes are numbered 1 2 3
;                    4 5 6
;                    7 8 9

(define puzzle
  (list (list 0 0 0  0 2 7  0 8 9)
        (list 6 9 0  0 0 0  1 0 3)
        (list 0 0 0  9 3 0  0 6 0)
        
        (list 4 7 1  0 0 3  0 0 0)
        (list 0 0 8  7 9 2  4 0 0)
        (list 0 0 0  1 0 0  7 3 6)
        
        (list 0 1 0  0 4 9  0 0 0)
        (list 9 0 5  0 0 0  0 2 7)
        (list 8 2 0  3 7 0  0 0 0)))

(define (get-row n puzzle)
  (list-ref puzzle (- n 1)))

(define (get-col n puzzle)
  (map (λ (row) (list-ref row (- n 1))) puzzle))

(define (get-box n puzzle)
  (let ((colblock (+ 1 (modulo (- n 1) 3)))
        (rowblock (ceiling (/ n 3))))
    (let ((blockrows (drop (take puzzle (* 3 rowblock)) (* 3 (- rowblock 1)))))
      (flatten (map (λ (row) (drop (take row (* 3 colblock)) (* 3 (- colblock 1)))) blockrows)))))
    
; so in a map operation, every element can know which box it is in. Could be useful.
(define box-id-map ((λ ()
  (define (make-row rowGroup)
    (build-list 9 (λ (n) (+ (* 3 (- rowGroup 1)) (ceiling (/ (+ 1 n) 3))))))
  (build-list 9 (λ (rownum) (make-row (ceiling (/ (+ 1 rownum) 3))))))))

(define row-id-map ((λ ()
  (define (make-row rownum)
    (build-list 9 (λ (n) rownum)))
  (build-list 9 (λ (n) (make-row (+ 1 n)))))))

(define col-id-map ((λ ()
  (build-list 9 (λ (n) (build-list 9 (λ (k) (+ 1 k))))))))
                      
(define (get-possibilities from-set)
  (filter (λ (value) (not (member value from-set))) (build-list 9 (λ (n) (+ n 1)))))

(define (get-common-possibilities row col box)
  (filter (λ (value) 
            (if (= 0 value) 
                #f
                (and (member value (get-possibilities row)) (member value (get-possibilities col))))) (get-possibilities box)))

(define (get-puzzle-possibilities puzzle)
  (map (λ (elements rowids colids boxids)
         
  (map (λ (element rownum colnum boxnum) 
         (if (= 0 element)
             (get-common-possibilities (get-row rownum puzzle) (get-col colnum puzzle) (get-box boxnum puzzle))
             element))
       elements rowids colids boxids))
       
       puzzle row-id-map col-id-map box-id-map))
             

(define (print-puzzle puzzle)
  (define (print-row row)
    (if (symbol? row)
        (printf "|-------+-------+-------|\n")
        (apply printf "| ~a ~a ~a | ~a ~a ~a | ~a ~a ~a |\n" (map (λ (e) (if (eq? e 0) " " e)) row))))
  (define (weave-borders rows count)
    (cond ((null? rows) (list 'bottom))
          ((= 0 count) (cons 'border (weave-borders rows (+ 1 count))))
          ((= 3 count) (cons (car rows) (weave-borders (cdr rows) 0)))
          (else (cons (car rows) (weave-borders (cdr rows) (+ 1 count))))))
        
  (for-each print-row (weave-borders puzzle 0)))
 
