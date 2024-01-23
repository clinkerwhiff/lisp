; push to list

(defvar *db* nil)

(defun make-track (title artist)
    (list :title title :artist artist))

(defun add-track (track)
    (push track *db*))

(add-track (make-track "Breezeblocks" "alt-J"))
(add-track (make-track "Perfect" "Ed Sheeran"))
(add-track (make-track "helpline" "Mura Masa"))

(print *db*)