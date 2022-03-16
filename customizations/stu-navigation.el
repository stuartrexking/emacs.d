(defun prev-window ()
  (interactive)
  (other-window -1))

(global-set-key (kbd "C-;") 'other-window)
(global-set-key (kbd "C-;") 'prev-window)
