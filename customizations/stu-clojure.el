(require 'use-package)

(use-package cider
  :ensure t
  :init
  (setq cider-print-fn 'zprint)
  (setq cider-save-file-on-load nil)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode))

(use-package clj-refactor
  :ensure t)

(use-package clojure-mode
  :ensure t
  :init
  (setq-default display-fill-column-indicator-column 100)
  (setq clojure-indent-style :align-arguments)
  (add-hook 'clojure-mode-hook (lambda () (display-fill-column-indicator-mode t))))

(use-package clojure-mode-extra-font-locking)

