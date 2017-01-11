(require 'use-package)

(use-package projectile
  :init
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-,") 'projectile-find-file))
