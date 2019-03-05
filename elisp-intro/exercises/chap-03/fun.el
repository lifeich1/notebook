;; exercises 3.12


(defun calc-double-number (number)
  "return NUMBER doubled result.

Write a non-interactive function that doubles the value of its
argument, a number.  Make that function interactive."
  (interactive "nEnter number: ")
  (let (ret)
    (setq ret (+ number number))
    (message "double: %d" ret)
    ret))

(calc-double-number 17)


(defun test-fill-column-greater-then (number)
  "test whether fill-column is greater than NUMBER.

Write a function that tests whether the current value of
‘fill-column’ is greater than the argument passed to the function,
and if so, prints an appropriate message."
  (interactive "p")
  (if (> fill-column number)
      (message "fill-column %d is greater" fill-column)
    (message "argument %d is greater" number)))

(test-fill-column-greater-then 999)
