(require 'use-package)

(use-package amx
  :config (amx-mode))

(use-package counsel
  :ensure t
  :bind (("C-s" . swiper-isearch)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("M-y" . counsel-yank-pop)
	 ("C-h f" . counsel-describe-function)
	 ("C-h v" . counsel-describe-variable)
	 ("C-x b" . ivy-switch-buffer)
	 ("C-c v" . ivy-push-view)
	 ("C-c V" . ivy-pop-view)
	 ("C-c C-r" . ivy-resume))
  :config
  (ivy-mode)
  (setq ivy-use-virtual-buffers t
	ivy-height 20
	ivy-count-format "%d/%d "
	ivy-virtual-abbreviate 'full
	ivy-extra-directories nil
	ivy-wrap t
	ivy-use-selectable-prompt t))

(use-package counsel-projectile
  :config
  (counsel-projectile-mode))

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(defun resume-isearch ()
  "Start swiper-isearch with the last thing searched for."
  (interactive)
  (swiper-isearch (car swiper-history)))
(global-set-key (kbd "s-r") 'resume-isearch)

(use-package all-the-icons-ivy-rich
  :ensure t
  :init (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :ensure t
  :init (ivy-rich-mode 1))
