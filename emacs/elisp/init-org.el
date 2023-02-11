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
			      ("" "amsthm" t))
   org-preview-latex-default-process 'dvisvgm
   ;; org-latex-compiler '"xelatex"
   org-latex-pdf-process (list "latexmk -pdf -bibtex %f")
   ;; org-latex-default-class '"ctexart"
   org-latex-default-class '"article"
   
   )
  (add-to-list 'org-file-apps '("\\.pdf" . "zathura %s"))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (haskell . t)))
  ;; DANGEROUS: Disable confirmation before evaluation source code block
  ;; (setq org-confirm-babel-evaluate nil)

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
	'(("blogs-org"
	   :base-directory "~/documents/public/blogs/"
	   :base-extension "org"
	   :publishing-directory "/tmp/publications/blogs"
	   :recursive t
	   :publishing-function org-html-publish-to-html
	   )
	  ("blogs-static"
	   :base-directory "~/documents/public/blogs/"
	   :base-extension "org\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg"
	   :publishing-directory "/tmp/publications/blogs"
	   :recursive t
	   :publishing-function org-publish-attachment
	   )
	  ("blogs" :components ("blogs-org" "blogs-static"))
	  ("notes-org"
	   :base-directory "~/documents/public/notes"
	   :base-extension "org"
	   :publishing-directory "/tmp/publications/notes"
	   :recursive t
	   :publishing-function org-html-publish-to-html
	   )
	  ("notes-static"
	   :base-directory "~/documents/public/notes"
	   :base-extension "org\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg"
	   :publishing-directory "/tmp/publications/notes"
	   :recursive t
	   :publishing-function org-publish-attachment
	   )
	  ("notes" :components ("notes-org" "notes-static"))
	  ("templates"
	   :base-directory "~/documents/public/templates"
	   :base-extension "org\\|css\\|js\\|"
	   :publishing-directory "/tmp/publications/templates"
	   :recursive t
	   :publishing-function org-publish-attachment
	   )
	  ("all" :components ("blogs" "notes" "templates"))
	  )))
(provide 'init-org)
