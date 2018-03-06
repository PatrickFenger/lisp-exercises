;; Lisp exercises on lists

;;
;; Preamble: Syntax
;;

;; An empty list
nil

;; A list with a single element
(list 2)

;; A list with an empty tail (same as above)
(list 2 nil)

;; A list created with cons
(cons 2 nil)

;; A list with more elements created with cons
(cons 2 (cons 4 nil))

;; Append a list to another with append
(append (list 1 2) (list 3 4))

;; Reverse a list with nreverse
(nreverse (list 1 2 3))

;;
;; Exercises
;;

;; Exercise 1
;; Create a list using 'cons'. The list should contain (42 69 613 nil)
(cons 42 (cons 69 (cons 613 nil)))

;; Exercise 2
;; Take the first element of the list below
(setf a (cons 8 (cons 1 nil)))
(car a)

;; Exercise 3
;; Take the tail of the list below
(setf a (cons 8 (cons 1 nil)))
(last a)

;; Exercise 4
;; Take the list below. If it turns out to be empty return 0. If it is not
;; empty, return the 1.
(setf a (cons 3 (cons 4 nil)))
(if (equal nil a) 0 1)

;; Exercise 4
;; Append (1 2) to the list below
(setf a (cons 3 (cons 4 nil)))
(setf b (append (list a (list 1 2))))

;; Exercise 5
;; Reverse the list below
(list 74 53 42)
(nreverse (list 74 53 42))
