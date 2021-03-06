;; Turn off the menu bar at the top of each frame because it's distracting
(menu-bar-mode -1)

;; Show line numbers
(global-linum-mode)

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; increase font size for better readability
(set-face-attribute 'default nil :height 140)

;; No cursor blinking, it's distracting
(blink-cursor-mode 0)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; no bell
(setq ring-bell-function 'ignore)

;; no tool bar
(tool-bar-mode -1)

;; initial size
(setq initial-frame-alist '((top . 0) (left . 0) (width . 220) (height . 160)))

;; disable auto-save
(setq auto-save-default nil)

;; inhibit the splash screen
(setq inhibit-splash-screen t)

;; set default calendar day of the week to Monday
(setq calendar-week-start-day 1)

(custom-set-faces)

;; turnoff backups and auto-save
(setq auto-save-default nil)
(setq make-backup-files nil)

;; zap up to char
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR.")

(global-set-key (kbd "M-z") 'zap-up-to-char)

;; distinguish C-m from RET https://emacs.stackexchange.com/questions/20240/how-to-distinguish-c-m-from-return
(define-key input-decode-map [?\C-m] [C-m])

;; set the initial scratch buffer
(setq initial-scratch-message "")

;; move text
(use-package move-text
  :ensure t
  :bind ("M-p" . move-text-up)
        ("M-n" . move-text-down))
