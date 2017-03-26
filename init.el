(require 'package)
;; add melpa
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; load and activate packages
(package-initialize)

;; download the elpa archive descriptions
(when (not package-archive-contents)
  (package-refresh-contents))

(package-install 'use-package)

(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/customizations")

(load "stu-avy.el")
(load "stu-bindings.el")
(load "stu-clojure.el")
(load "stu-company.el")
(load "stu-editor.el")
(load "stu-shell.el")
;;(load "stu-flx-ido.el")
(load "stu-helm.el")
(load "stu-magit.el")
(load "stu-markdown.el")
(load "stu-multiple-cursors.el")
(load "stu-neotree.el")
(load "stu-navigation.el")
(load "stu-paredit.el")
(load "stu-rainbow-delimiters.el")
(load "stu-projectile.el")
(load "stu-solarized-theme.el")
(load "stu-yasnippet.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-projectile helm-ag helm avy yasnippet use-package solarized-theme rainbow-delimiters projectile parinfer paredit markdown-mode flx-ido company clojure-mode-extra-font-locking cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
