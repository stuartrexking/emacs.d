(require 'use-package)

(use-package idle-highlight-mode
  :config
  (setq idle-highlight-idle-time 0.2)
  (set-face-attribute 'region nil :background "#F8F8F8")
  :hook ((prog-mode text-mode) . idle-highlight-mode))

