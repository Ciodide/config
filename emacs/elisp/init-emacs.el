;; twick some build in furture in emacs , wait to clean up

(use-package emacs
  :ensure t
  :config
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (delete-selection-mode t)
  (global-auto-revert-mode)
  (setq tab-width 2
				make-backup-files t
				auto-save-default nil
				auto-revert-interval 1
				backup-by-copying-when-linked 1
				truncate-lines t
				backup-directory-alist '(("." . "/tmp/emacs_backup"))
				)
  )

;;(global-hl-line-mode 1
;;(setq-default global-visual-line-mode t)

(use-package display-line-numbers
  :ensure t
  :init (global-display-line-numbers-mode)
  :config
  (setq display-line-number-width-start t)
  )

(use-package recentf
  :ensure t
  :init (recentf-mode 1)
  :config
  (setq recentf-max-menu-items 25
				recentf-max-saved-items 25)
  :bind ("C-x C-r" . recentf-open-files)
  )

(use-package display-fill-column-indicator
  :ensure t
  :init (global-display-fill-column-indicator-mode)
  )
;;(add-hook 'prog-mode-hook 'hl-line-mode)
;;(add-hook 'text-mode-hook 'hl-line-mode)


(custom-set-variables '(auth-source-save-behavior nil))


(provide 'init-emacs)
