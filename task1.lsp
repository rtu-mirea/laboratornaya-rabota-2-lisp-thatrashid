;; Task_1
;; Addition

(print (list 78 23 9 32 1 66))

(defun addElem(lst id newelem)
    (if (= id 0)
        (setf lst (append (list newelem) lst)))
    (if (> id 0)
        (push newelem (cdr (nthcdr (- id 1) lst))))
    lst)
  
(addElem (list 78 23 9 32 1 66) 0 55)

;; Delete

(defun deleteElem(lst id)
    (append (subseq lst 0 id) (nthcdr (+ id 1) lst)))
  
(deleteElem (list 78 23 9 32 1 66) 0)

;; Find


(defun findElem (e lst)
	(let ((n nil) (a -1))
		(dolist (i lst n)
			(setq a (+ a 1))
			(when (eq i e)
				(return a))
    )))

(findElem `76 `(list 78 23 9 32 1 66))