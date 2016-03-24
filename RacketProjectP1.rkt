#lang racket

(require avl)

(define tree (make-avl <=))
(avl-add! tree 4)
(avl-add! tree 5)
(avl-add! tree 6)
(avl-add! tree 7)
(avl-add! tree 8)

(avl-empty? tree)
(avl-contains? tree 7)
(avl-contains? tree 10)

(avl-remove tree 7)
(avl-contains? tree 7)

(avl-pop-max tree)