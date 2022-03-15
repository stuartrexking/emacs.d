(require 'use-package)

(use-package cider
  :ensure t)

(use-package clj-refactor
  :ensure t)

(use-package clojure-mode
  :ensure t
  :init
  (setq-default display-fill-column-indicator-column 100)
  (add-hook 'clojure-mode-hook (lambda () (display-fill-column-indicator-mode t))))

(use-package clojure-mode-extra-font-locking)

(setq cider-print-fn 'zprint)
