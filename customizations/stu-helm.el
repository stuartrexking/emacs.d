(require 'use-package)

(use-package helm
  :ensure t
  :config
  ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
  ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
  ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
  (global-set-key (kbd "C-c h") 'helm-command-prefix)
  (global-unset-key (kbd "C-x c"))
  (require 'helm-config)

  (global-set-key (kbd "C-c M-x")     'execute-extended-command) ; old M-x
  (global-set-key (kbd "C-h C-f")     'helm-apropos)
  (global-set-key (kbd "C-x C-b")     'helm-buffers-list)
  (global-set-key (kbd "C-c f")       'helm-recentf)
  (global-set-key (kbd "C-x C-f")     'helm-find-files)
  (global-set-key (kbd "M-x")         'helm-M-x)
  (global-set-key (kbd "M-y")         'helm-show-kill-ring)
  (global-set-key (kbd "C-x b")       'helm-mini)
  (global-set-key (kbd "C-x C-f")     'helm-find-files)
  (global-set-key (kbd "C-c o")       'helm-occur)

  (define-key global-map [remap jump-to-register]      'helm-register)
  (define-key global-map [remap list-buffers]          'helm-buffers-list)
  (define-key global-map [remap dabbrev-expand]        'helm-dabbrev)
  (define-key global-map [remap find-tag]              'helm-etags-select)
  (define-key global-map [remap xref-find-definitions] 'helm-etags-select)

  (helm-adaptive-mode t)
  (helm-mode 1))

(use-package helm-ag
  :ensure t)

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))
