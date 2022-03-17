(require 'use-package)

(use-package paredit
  :ensure t
  :init
  (add-hook 'cider-repl-mode-hook #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook #'enable-paredit-mode))

(electric-pair-mode)
