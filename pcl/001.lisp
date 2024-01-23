; list and property-list

; regular list

(list 1 2 3)

; property list

(list :a 1 :b 2 :c 3)

(print (getf (list :a 1 :b 2 :c 3) :b))