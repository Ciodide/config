(use-package org
  :ensure t
  :config
  (setq
   org-startup-truncated nil
   ;; LaTeX
   org-format-latex-options (plist-put org-format-latex-options
				       :scale 1.4)
   org-format-latex-options (plist-put org-format-latex-options
				       :background '"Transparent")
   org-latex-packages-alist '(("" "mathrsfs" t)
			      ("" "amsthm" t))
   org-preview-latex-default-process 'dvisvgm
   org-latex-compiler '"xelatex"
   org-latex-default-class '"ctexart"
   )
  (add-to-list 'org-file-apps '("\\.pdf" . "zathura %s"))
  :hook (org-mode . org-indent-mode)
  )

(use-package ox-latex
  :config
  (add-to-list 'org-latex-classes
	       '("ctexart" "\\documentclass[hyperref,UTF8]{ctexart}"
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		 ("\\paragraph{%s}" . "\\paragraph*{%s}")
		 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
	       '("apa7" "\\documentclass{apa7}"
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

  )

(provide 'init-org)
