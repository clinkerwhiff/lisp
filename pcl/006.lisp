; conditionals and loops

(defvar *db* nil)

(defun prompt ()
    (format t "Number: ")
    (force-output *query-io*)
    (read-line *query-io*))

(defun add-num (num)
    (push num *db*))

(defun iter ()
    (add-num (prompt)))

(defun dump-db ()
    (dolist (num *db*)
        (format t "~a~%" num)))

(loop (iter)
    (if (not (y-or-n-p "Continue? [y/n]: ")) (return)))

(dump-db)