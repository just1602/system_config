;; encodage des caractere
(set-language-environment "UTF-8")

;; Configure C programation style
(setq c-default-style "k&r")

;; personnal keybind
(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c g") 'gdb)
(global-set-key (kbd "C-c k") 'kill-this-buffer)

;; show line number
(column-number-mode t)
(line-number-mode t)

;; google c style
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; xdvik search 
(add-to-list 'load-path "/usr/share/emacs/site-lisp/tex-utils")
(require 'xdvi-search)

;; almost-monokai color-theme
(load-file "/home/justin/.emacs.d/color-themes/color-theme-almost-monokai.el")
(load-file "/home/justin/.emacs.d/color-themes/color-theme-molokai.el")

(require 'color-theme)
(color-theme-molokai)


;; speedbar
(require 'tramp)


(defconst my-junk-buffer-name "Junk")
(setq junk-buffer (get-buffer-create my-junk-buffer-name)
      )


(require 'speedbar)
(defconst my-speedbar-buffer-name "SPEEDBAR")
(setq speedbar-buffer (get-buffer-create my-speedbar-buffer-name)
      speedbar-frame (selected-frame)
      dframe-attached-frame (selected-frame)
      speedbar-select-frame-method 'attached
      speedbar-verbosity-level 0
      speedbar-last-selected-file nil)
(setq right-window (split-window-horizontally 24))
(setq left-window  (frame-first-window))
;(walk-windows (lambda (w) (setq left-window w)) "nominibuffer" t)


(set-buffer speedbar-buffer)
(speedbar-mode)
(speedbar-reconfigure-keymaps)
(speedbar-update-contents)
(speedbar-set-timer 1)
(set-window-buffer left-window "SPEEDBAR")
(set-window-dedicated-p left-window t)
(toggle-read-only) ; HACK, REQUIRED for Tramp to work ????
(select-window right-window)
(defun select-right-window () (select-window right-window))


;(defun reset-window-config () (interactive)
;  (walk-windows (lambda (w) (when (not (or (eq w left-window) (eq w right-window))) (delete-window w))) "nominibuffer" t)
;  )
(defun reset-window-config () (interactive)
  (delete-other-windows)
  (setq right-window (split-window-horizontally 24))
  (setq left-window  (frame-first-window))
  (set-window-buffer left-window speedbar-buffer)
  (set-window-dedicated-p left-window t)
  (select-window right-window)
  (set-window-dedicated-p right-window nil)
  (when (eq speedbar-buffer (window-buffer right-window)) (set-window-buffer right-window (next-buffer)))
  (set-window-dedicated-p right-window nil)
  )
(global-set-key "\C-x1" 'reset-window-config)


