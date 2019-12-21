;; Task_3
(defun compress(lst &aux (cur (car lst)) (len 1) tail)
  (cons
   (if (= cur (cadr lst))
      (list (setq len (loop for i in lst when (/= i cur) do (loop-finish) count t)) cur) cur)
   (if (setq tail (subseq lst len)) (compress tail)))
)


(defun uncompress (lst &optional (c 0))
  (cond
    ((null lst) nil)
    ((atom (car lst)) (cons (car lst) (uncompress (cdr lst))))
    ((if (< c (cadar lst))
         (cons (caar lst) (uncompress lst (1+ c)))
         (uncompress (cdr lst))))))


(print (compress (list 19 19 19 25 25 25 32 32 32 44 54 66 70 70 70)))

(print (uncompress (list (list 11 41) 9 10 (list 33 15) (list 75 27))))