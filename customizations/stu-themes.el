(require 'use-package)

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-vibrant t))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
