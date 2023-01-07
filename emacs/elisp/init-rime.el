(use-package rime
  :ensure t
  :custom
  (default-input-method "rime")
  :config
  (setq
   rime-show-candidate 'posframe
   rime-posframe-style 'vertical
   rime-show-preedit 'inline
   rime-disable-predicate '(rime-predicate-org-latex-mode-p
			    rime-predicate-org-in-src-block-p
			    ;;rime-predicate-prog-in-code-p
			    rime-predicate-tex-math-or-command-p
			    )
   rime-translate-keybindings '("C-f" "C-b" "C-n" "C-p" "C-g" "C-`"
				"<left>" "<right>" "<up>" "<down>"
				"<prior>" "<next>" "<delete>")
   )
  
  )

(provide 'init-rime)
