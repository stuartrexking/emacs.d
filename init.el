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

;; load each customizations
(load "stu-ag.el")
(load "stu-avy.el")
(load "stu-backups.el")
(load "stu-bindings.el")
(load "stu-aggressive-indent.el")
(load "stu-zprint.el")
(load "stu-clojure.el")
(load "stu-company.el")
(load "stu-editor.el")
(load "stu-idle-highlight.el")
(load "stu-projectile.el")
(load "stu-ivy.el")
(load "stu-shell.el")
(load "stu-magit.el")
(load "stu-markdown.el")
;; (load "stu-multiple-cursors.el")
;; (load "stu-neotree.el")
(load "stu-navigation.el")
(load "stu-paredit.el")
(load "stu-pkg-info.el")
(load "stu-rainbow-delimiters.el")
(load "stu-themes.el")
(load "stu-crux.el")
(load "stu-super-save.el")
;; (load "stu-yasnippet.el")
;; (load "stu-web-mode.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(flycheck-clj-kondo flycheck cl ivy-posframe kaolin-themes focus doom-modeline super-save doom-themes crux counsel-projectile all-the-icons-ivy-rich markdown-mode pkg-info aggressive-indent use-package solarized-theme rainbow-delimiters projectile move-text magit idle-highlight-mode exec-path-from-shell counsel company clojure-mode-extra-font-locking clj-refactor avy amx ag))
 '(safe-local-variable-values
   '((cider-known-endpoints
      ("redis-graph-play" "localhost" "9000"))
     (cider-known-endpoints
      ("deft" "localhost" "7888"))
     (cider-path-translations
      ("/root/.m2" . "/Users/stuartrexking/.m2")
      ("/root/code/" . "/Users/stuartrexking/Workspace/shopdeft/deft"))
     (cider-known-endpoints
      ("work" "localhost" "9000")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
