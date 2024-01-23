; format for printing

(defvar *db* nil)

(defun make-city (name country)
    (list :name name :country country))

(defun add-city (city)
    (push city *db*))

(add-city (make-city "London" "England"))
(add-city (make-city "Paris" "France"))
(add-city (make-city "Madrid" "Spain"))

; t specifies output stream as standard output
; ~{ and ~} specify beginning and ending of string format for each list element
; ~a prints element in aesthetic form
; ~10t is for spacing of 10
; ~% is newline

(defun dump-db ()
    (dolist (city *db*)
        (format t "~{~a:~10t~a~%~}~%" city)))

(dump-db)