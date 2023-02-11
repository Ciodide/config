(use-package haskell-mode
  :ensure t
  :config
  (setq haskell-font-lock-symbols t)
  :hook ((haskell-mode . lsp)
	 (haskell-literate-mode . lsp)
	 )
  :bind (("C-c C-c" . haskell-compile))
  )

(use-package lsp-haskell
  :ensure t
  )

(provide 'init-haskell)
