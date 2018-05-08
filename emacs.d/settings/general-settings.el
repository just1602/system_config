;; set the current language to english
(setq current-language-environment "English")

;; don't show the startup buffer
(setq inhibit-startup-screen 1)

;; don't show menubar
(menu-bar-mode 0)

;; don't show toolbar
(require 'tool-bar)
(tool-bar-mode 0)

;; don't show scrollbar
(if window-system (scroll-bar-mode 0))

;; trailling line and add new line at the end of file
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline t)

;; on osx, use cmd for meta command
(if (system-is-mac)
    (setq ns-command-modifier 'meta))

;; 80 chars column
(setq-default fill-column 80)

;; always use spaces, not tabs, when indenting
(setq-default indent-tabs-mode nil)

;; disable cursor blink
(blink-cursor-mode 0)

;; disable backup
(setq backup-inhibited t)

;; disable auto save
(setq auto-save-default nil)

;; show line number
(global-linum-mode t)

;; auto close bracket insertion. New in emacs 24
(electric-pair-mode 1)

(provide 'general-settings)
