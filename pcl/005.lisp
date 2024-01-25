; prompting for input

(defvar *db* nil)

(defun make-city (name country rating)
    (list :name name :country country :rating rating))

(defun prompt-read (prompt)
    (format t "~a: " prompt)
    (force-output *query-io*)
    (read-line *query-io*))

(defun prompt-for-city ()
    (make-city
        (prompt-read "Name")
        (prompt-read "Country")
        (or (parse-integer (prompt-read "Rating") :junk-allowed t) 0)))

(defun add-city (city)
    (push city *db*))

(defun dump-db ()
    (dolist (city *db*)
        (format t "~{~a:~10t~a~%~}~%" city)))

(add-city (prompt-for-city))
(add-city (prompt-for-city))
(add-city (prompt-for-city))

(dump-db)