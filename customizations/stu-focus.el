(require 'use-package)

(use-package focus
  :ensure t
  :config
  (add-hook 'clojure-mode-hook #'focus-mode))
