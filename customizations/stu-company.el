(require 'use-package)

(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-idlel-delay 0))

