(require 'use-package)

(use-package projectile
  :init
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'ivy))

(add-to-list 'projectile-globally-ignored-directories "target")
(add-to-list 'projectile-globally-ignored-directories "resources/public/js/compiled")
