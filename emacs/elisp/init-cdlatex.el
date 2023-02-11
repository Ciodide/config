(use-package cdlatex
  :ensure t
  :config
  (setq cdlatex-math-modify-alist
	'((?s "\\mathscr" nil t nil nil)
	  (?d "\\mathbb" nil t nil nil)))
  )

(provide 'init-cdlatex)
