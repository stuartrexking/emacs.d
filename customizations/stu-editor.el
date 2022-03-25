
;; Turn off the menu bar at the top of each frame because it's distracting
(menu-bar-mode -1)

;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Show line numbers
(global-linum-mode)

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; increase font size for better readability
(set-face-attribute 'default nil :height 140)

;;set font to Jetbrains Mono
(set-frame-font "Jetbrains Mono 11" nil t)

;;full screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; No cursor blinking, it's distracting
(blink-cursor-mode 0)

;; Disable electric indent mode
(setq electric-indent-mode nil)

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
(setq initial-scratch-message "Because America")

(setq mac-allow-anti-aliasing t)

;; Better scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;; When you visit a file, point goes to the last place where it was when you previously visited the same file.
(save-place-mode 1)
