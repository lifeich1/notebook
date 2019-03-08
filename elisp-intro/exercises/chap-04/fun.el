;; 4.6

(defun simplified-end-of-buffer ()
  "goto max position in current buffer.

Write your own ‘simplified-end-of-buffer’ function definition; then
test it to see whether it works."
  (interactive)
  (goto-char (point-max)))


(defun test-buffer-exists (buffer-or-name)
  "print message telling BUFFER-OR-NAME is an existing buffer.

Use ‘if’ and ‘get-buffer’ to write a function that prints a message
telling you whether a buffer exists."
  (interactive "Bbuffer name: ")
  (if (bufferp (get-buffer buffer-or-name))
      (message "buffer %s exists" buffer-or-name)
    (message "cannot find buffer %s" buffer-or-name)))

(test-buffer-exists "no_here.txt")
