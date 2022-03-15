(require 'use-package)

(use-package company
  :init
  (add-hook 'after-init-hook #'global-company-mode)
  (add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
  (add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)
  (setq company-idle-delay nil))

(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
