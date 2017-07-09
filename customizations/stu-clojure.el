(require 'use-package)

(use-package clojure-mode)

(use-package clj-refactor
  :ensure t
  :diminish clj-refactor-mode
  :after clojure-mode
  :config
  (yas-minor-mode 1)
  (clj-refactor-mode 1))

(use-package clojure-mode-extra-font-locking)
(use-package cider
  :init
  (setq cider-cljs-lein-repl
	"(do (require 'figwheel-sidecar.repl-api)
       (figwheel-sidecar.repl-api/start-figwheel!)
       (figwheel-sidecar.repl-api/cljs-repl))"))

(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(defun clojure-mode-customizations-hook ())

(add-hook 'clojure-mode-hook 'clojure-mode-customizations-hook)
