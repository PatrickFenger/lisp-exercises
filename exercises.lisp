;; Exercise 1
;; Take a list of unknown size return the last non-nil element (don't use "last")
(defun lastNonNil(_list) (if (equal (cdr _list) nil) (car _list) (lastNonNil(cdr _list))))

(setf my_list (list 3 4 5 6 7 8 9))
(Write(lastNonNil my_list))


;; Exercise 2
;; Lookup Euler project
;; sum of squares(SOQ) (2sq + 4 sq + 8 sq)
;; Square of usms (QOS) (2 + 4 + 8)sq
;;write a function taking a list of numbers and returning difference between SOQ and QOS

(defun Euler(_list) (- (SOQ _list 0) (QOS _list 0)))


(defun SOQ(_list _soq) (if (equal (cdr _list) nil)
(+ _soq (* (car _list) (car _list)))
(SOQ (cdr _list) (+ _soq (* (car _list) (car _list))))))

(defun QOS(_list _qos) (if (equal (cdr _list) nil)
(* (+ _qos (car _list)) (+ _qos (car _list)) )
(QOS (cdr _list) (+ _qos (car _list)))
))

(Write(SOQ my_list 0))
(Write(QOS my_list 0))
(Write(EULER my_list))


;; Exercise 3
;; Given a list of 4 elements
;;How can you remove the third element from the list if you have only access to the third element
;; you cannot access the 2nd elements
;;(normally would go to second element and define tail of this element as the 4th element
;; instead of the third)

;; solution: go to the third element, point head of third to head of the fourth
;; and point tail of third element to tail of the fourth



;; Exercise 4
;; Look at the commit history of the lisp-exercises repo and solve the pi-exercise