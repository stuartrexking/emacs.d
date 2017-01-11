(require 'use-package)

(use-package clojure-mode)
(use-package clojure-mode-extra-font-locking)
(use-package cider
  :init
  (setq cider-cljs-lein-repl
    "(do (require 'figwheel-sidecar.repl-api)
       (figwheel-sidecar.repl-api/start-figwheel!)
       (figwheel-sidecar.repl-api/cljs-repl))"))
