(require 'use-package)

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-material t)
)

;; Kaolin themes are also really nice
;; https://github.com/ogdenwebb/emacs-kaolin-themes
;; (use-package kaolin-themes
  ;; :config
  ;; (load-theme 'kaolin-aurora t)
  ;; (kaolin-treemacs-theme))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
