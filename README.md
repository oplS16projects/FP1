Michael Antrobus


#What I did: Avl trees

At first i was interested in the library called 3d-model which would take 3 dimensional data and then plot that data as a form of vertices and polygons making a unique shape that would be curbed by data. However the 3d-model library didn't seem to want to work properly so i decided to work with avl trees. All i did was a i added some numbers to an avl tree and decided to test out all of it's functions to see what it could do and to give myself an example of how to called specific things.


#Code:

I started off by creating and avl tree and filling it with numbers. There are 3 different types of trees that use 3 different predicates, equal? eq? and eqv? to compare data that they are given. Here make-avl is using equal? Using avl-add and a reference to the tree that we created we can add as many numbers as we want to our tree. These avl trees in racket have pretty much the same functionality as avl trees in C/C++. We can use the avl-empty? function to test whether or not there are items in our tree. We can also use avl-contains? to determine if our tree hold specific numbers or not. We can remove numbers from the tree using avl-remove as well as check the min and max of a tree using avl-min/max. There are two types of pop-min and pop-max, the pop-min and pop-max also returns the new tree container itself, i assume it allows me to pass the updated tree off to another function at the same time. pop-min! and pop-max! just return the number that is popped off. The last few functions tree the avl tree as a list, in-avl/reverse will traverse the list in reverse order and then apply the function given to each member of the tree, in-avl will just do the same thing but in order and avl->list will convert the tree to an ordered list.

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

(avl-min tree)
(avl-max tree)

(avl-pop-min! tree)
(avl-pop-max! tree)

(for/list ((value (in-avl/reverse tree)))
  (* value 1))

(for/list ((value (in-avl tree)))
  (* value 1))

(avl->list tree)

```


#Output:

Here is the corresponding output for the above code. (avl-pop-max tree) uses the last 2 lines output because the procedure returns both the number popped off and a copy of the new tree.

```racket
#f
#t
#f
#<avl>
#t
4
8
4
8
'(7 6 5)
'(5 6 7)
'(5 6 7)
```

#Picture:

Here is the general idea of what is going on in an avl tree, these are pictures found online because this library doesn't really have any methods to "draw" a tree only to output it.

![alt text](https://github.com/Aurelas/FP1/blob/master/ConstructionofAVLtree3.PNG?raw=true)
![alt text](https://github.com/Aurelas/FP1/blob/master/avlTree.jpg?raw=true)

