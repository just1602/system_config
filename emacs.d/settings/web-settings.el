(use-package web-mode
  :config
  ;; file extension association
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

  ;; web-mode config
  (setq web-mode-enable-auto-pairing t))

(provide 'web-settings)
