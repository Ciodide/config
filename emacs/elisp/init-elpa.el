;;https://melpa.org/#/getting-started
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")
	("org" . "https://orgmode.org/elpa/")
	))

(custom-set-variables
 '(package-selected-packages
   '(use-package)))

(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

(package-install-selected-packages)

(provide 'init-elpa)
