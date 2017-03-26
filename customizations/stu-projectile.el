(require 'use-package)

(use-package projectile
  :init
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-,") 'helm-projectile))

(add-to-list 'projectile-globally-ignored-directories "target")
