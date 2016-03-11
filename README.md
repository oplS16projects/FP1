Michael Antrobus


#What I did: Avl trees

At first i was interested in the library called 3d-model which would take 3 dimensional data and then plot that data as a form of verticies and polygons making a unique shape that would be curbed by data. However the 3d-model library didn't seem to want to work properly so i decided to work with avl trees. All i did was a i added some numbers to an avl tree and decided to test out all of it's functions to see what it could do and to give myself an example of how to called specific things.


#Code:

I started off by creating and avl tree and filling it with numbers. There are 3 different types of trees that use 3 different predicates, equal? eq? and eqv? to compare data that they are given. Here make-avl is using equal? I start off by adding a bunch of numbers to the tree and testing if the tree is empty or not, then seeing whether it can tell if it has its own numbers or not then i pop the max off of the tree.

```racket
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

```


#Output:

Here is the corresponding output for the above code. (avl-pop-max tree) uses the last 2 lines output because the procedure returns both the number popped off and a copy of the new tree.

```racket
#f
#t
#f
#<avl>
#t
8
#<avl>
```

#Picture:

Here is the general idea of what is going on in an avl tree

