; file operations

(defvar *db* nil)

(defun prompt-read (var)
    (format t "~a: " var)
    (force-output *query-io*)
    (read-line *query-io*))

(defun pack (city country rating)
    (list :city city :country country :rating rating))

(defun prep-city ()
    (pack
        (prompt-read "City")
        (prompt-read "Country")
        (or (parse-integer (prompt-read "Rating") :junk-allowed t) 0)))

(defun iter ()
    (push (prep-city) *db*))

(defun save-db (filename)
    (with-open-file (out filename :direction :output :if-exists :supersede)
        (with-standard-io-syntax
            (print *db* out))))

(defun load-db (filename)
    (with-open-file (in filename)
        (with-standard-io-syntax
            (setf *db* (read in)))))

(loop (iter)
    (if (not (y-or-n-p "Continue? [y/n]: ")) (return)))

(defun dump-db ()
    (dolist (elem *db*)
        (format t "~{~a:~10t~a~%~}~%" elem)))

(save-db "data/007-db.db")

(load-db "data/007-db.db")

(dump-db)