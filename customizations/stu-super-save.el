(require 'use-package)

(use-package super-save
  :ensure t
  :config
  (super-save-mode +1))

(setq auto-save-default nil)

