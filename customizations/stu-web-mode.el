(require 'use-package)

(use-package web-mode
  :init
  (progn
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
    (setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))))
