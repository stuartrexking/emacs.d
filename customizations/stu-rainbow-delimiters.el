(require 'use-package)

(use-package rainbow-delimiters
  :init
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

