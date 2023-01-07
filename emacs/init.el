;;https://stackoverflow.com/questions/11418648/how-to-set-default-emacs-background-and-foreground-colors

;;; Code:
(add-to-list 'default-frame-alist '(background-color. "#000000"))

(add-to-list 'load-path "~/.emacs.d/elisp/")
(setq load-prefer-newer t)
;;; No ELPA
(require 'init-no-elpa-emacs)
(require 'init-theme)
(require 'init-no-elpa-org)

;; --- Elpa & Packages---
;;(require 'init-elpa)

;; --- UI ---
;;(require 'init-emacs)
;;(require 'init-theme)

;; --- Universal Package ---
;;(require 'init-use-package)
;;(require 'init-which-key)
;;(require 'init-lsp)
;;(require 'init-company)
;;(require 'init-company-math)
;;(require 'init-rime)
;;(require 'init-posframe)
;;(require 'init-smartparens)
;;(require 'init-yasnippet)
;;(require 'init-flycheck)

;;(require 'init-highlight-indent-guides)
;;(require 'init-term-keys)


;; --- Major Mode & Specific Minor Mode ---
;; -- Pdf Mode --
;;(require 'init-pdftools)
;; -- LaTeX Mode ---
;;(require 'init-auctex)
;;(require 'init-auctex-latexmk)
;;(require 'init-cdlatex)
;; -- Org Mode --
;;(require 'init-org)
;;(require 'init-helm-org)
;;(require 'init-org-pdftools)
;;(require 'init-org-ref)
;;(require 'init-org-cdlatex)
;; -- Python Mode --
;;(require 'init-ein)
