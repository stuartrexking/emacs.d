;;yank-pop in reverse
(defun yank-pop-forwards (arg)
  (interactive "p")
  (yank-pop (- arg)))

(global-set-key (kbd "M-Y") 'yank-pop-forwards)
(global-set-key (kbd "C-c j") 'previous-buffer)
(global-set-key (kbd "C-c k") 'next-buffer)


;;toggle line comments with C-;
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

;; move text
(use-package move-text
  :ensure t
  :bind ("M-p" . move-text-up)
        ("M-n" . move-text-down))
