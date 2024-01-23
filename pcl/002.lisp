; functions

; function definition

(defun make-track (title artist)
    (list :title title :artist artist))

(print (getf (make-track "Breezeblocks" "alt-J") :title))