(use-package enh-ruby-mode
  :config
  (autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
  (add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
  (add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode)))

(use-package rbenv
  :config
  (global-rbenv-mode))

(provide 'ruby-settings)
