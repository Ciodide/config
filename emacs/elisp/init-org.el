(use-package org
  :ensure t
  :config
  (setq
   org-startup-truncated nil
   ;; LaTeX
   org-format-latex-options (plist-put org-format-latex-options
				       :scale 1.4)
   ;; org-format-latex-options (plist-put org-format-latex-options
   ;; 				       :background '"Transparent")
   org-latex-packages-alist '(("" "mathrsfs" t)
			      ("" "amsthm" t)
			      ("" "ctex" t))
   org-preview-latex-default-process 'dvisvgm
   ;; org-latex-compiler '"xelatex"
   org-latex-pdf-process (list "latexmk -pdflatex='xelatex -shell-escape -interaction nonstopmode' -pdf -bibtex -output-directory=%o %f")
   ;; org-latex-default-class '"ctexart"
   org-latex-default-class '"article"
   
   )
  (add-to-list 'org-file-apps '("\\.pdf" . "zathura %s"))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (haskell . t)))
  ;; DANGEROUS: Disable confirmation before evaluation source code block
  (setq org-confirm-babel-evaluate nil)

  :hook ((org-mode . org-indent-mode)
	 (org-mode . turn-on-org-cdlatex))
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

(use-package ox-publish
  :config
  (setq org-publish-project-alist
	'(("blogs-org-html"
	   :base-directory "~/documents/public/blogs/"
	   :base-extension "org"
	   :publishing-directory "~/documents/public/blogs/"
	   :recursive t
	   :publishing-function org-html-publish-to-html
	   )
	  ("blogs-org-pdf"
	   :base-directory "~/documents/public/blogs/"
	   :base-extension "org"
	   :publishing-directory "~/documents/public/blogs/"
	   :recursive t
	   :publishing-function org-latex-publish-to-pdf
	   )
	  ("blogs-static"
	   :base-directory "~/documents/public/blogs/"
	   :base-extension "org\\|html\\|pdf\\|png\\|jpg\\|gif\\|mp3\\|ogg"
	   :publishing-directory "~/share/publications/blogs"
	   :recursive t
	   :publishing-function org-publish-attachment
	   )
	  ("blogs-templates"
	   :base-directory "~/documents/public/templates"
	   :base-extension "css\\|js"
	   :publishing-directory "~/share/publications/blogs/templates"
	   :recursive t
	   :publishing-function org-publish-attachment
	   )
	  ("blogs" :components ("blogs-org-html"
				"blogs-org-pdf"
				"blogs-static"
				"blogs-templates"))
	  ("notes-org-html"
	   :base-directory "~/documents/public/notes"
	   :base-extension "org"
	   :publishing-directory "~/documents/public/notes"
	   :recursive t
	   :publishing-function org-html-publish-to-html
	   )
	  ("notes-org-pdf"
	   :base-directory "~/documents/public/notes"
	   :base-extension "org"
	   :publishing-directory "~/documents/public/notes"
	   :recursive t
	   :publishing-function org-latex-publish-to-pdf
	   )
	  ("notes-static"
	   :base-directory "~/documents/public/notes"
	   :base-extension "org\\|html\\|pdf\\|png\\|jpg\\|gif\\|mp3\\|ogg"
	   :publishing-directory "~/share/publications/notes"
	   :recursive t
	   :publishing-function org-publish-attachment
	   )
	  ("notes-templates"
	   :base-directory "~/documents/public/templates"
	   :base-extension "css\\|js\\|"
	   :publishing-directory "~/share/publications/notes/templates"
	   :recursive t
	   :publishing-function org-publish-attachment
	   )
	  ("notes" :components ("notes-org-html"
				"notes-org-pdf"
				"notes-static"
				"notes-templates"))
	  
	  ("all" :components ("blogs" "notes"))
	  )))
(provide 'init-org)
