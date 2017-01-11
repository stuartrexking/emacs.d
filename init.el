(require 'package)

;; add melpa stable
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; load and activate packages
(package-initialize)

;; download the elpa archive descriptions
(when (not package-archive-contents)
  (package-refresh-contents))

(package-install 'use-package)

(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/customizations")

(load "stu-bindings.el")
(load "stu-clojure.el")
(load "stu-editor.el")
(load "stu-shell.el")
(load "stu-flx-ido.el")
(load "stu-markdown.el")
(load "stu-paredit.el")
(load "stu-rainbow-delimiters.el")
(load "stu-projectile.el")
(load "stu-solarized-theme.el")
(load "stu-yasnippet.el")
