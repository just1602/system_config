(use-package scss-mode
  :init
  (autoload 'scss-mode "scss-mode")
  :config
  (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
  ;; disable auto-compile on save since we have webpack
  (setq scss-compile-at-save nil))

(provide 'scss-settings)
