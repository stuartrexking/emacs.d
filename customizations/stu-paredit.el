(require 'use-package)

(use-package paredit
  :config
  (add-hook 'cider-repl-mode-hook #'paredit-mode))

(electric-pair-mode)
