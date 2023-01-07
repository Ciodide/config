(use-package lsp-mode
			 :ensure t
			 :init
			 (setq lsp-keymap-prefix "C-c l")
			 :hook
			 (
			  (python-mode . lsp)
			  (lsp-mode . lsp-enable-which-key-integration))
			 :commands lsp)

(use-package lsp-ui
			 :ensure t
			 :commands
			 lsp-ui-mode)
(use-package lsp-ivy
			 :ensure t
			 :commands
			 lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
			 :ensure t
			 :commands
			 lsp-treemacs-errors-list)

(provide 'init-lsp)
