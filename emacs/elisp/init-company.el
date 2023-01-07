(use-package company-mode
  :ensure company
  :init
  :config
  (setq company-idle-delay 0.3
		company-minimum-prefix-length 2)
  :hook prog-mode
  )

(use-package company-statistics-mode
  :ensure company-statistics
  :hook company-mode
  )


(provide 'init-company)
