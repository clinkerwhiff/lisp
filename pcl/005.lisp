; prompting for input

(defvar *db* nil)

(defun make-city (name country)
    (list :name name :country country))

(defun prompt-read (prompt)
    (format t "~a: " prompt)
    (force-output *query-io*)
    (read-line *query-io*))

(defun prompt-for-city ()
    (make-city
        (prompt-read "Name")
        (prompt-read "Country")))

(defun add-city (city)
    (push city *db*))

(defun dump-db ()
    (dolist (city *db*)
        (format t "~{~a:~10t~a~%~}~%" city)))

(add-city (prompt-for-city))
(add-city (prompt-for-city))
(add-city (prompt-for-city))

(dump-db)