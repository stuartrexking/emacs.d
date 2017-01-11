(require 'use-package)

(if (eq system-type 'darwin)
    (use-package exec-path-from-shell))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs '("PATH")))

