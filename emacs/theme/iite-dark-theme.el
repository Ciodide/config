(deftheme iite-dark
  "IITE dark theme by Ciodide Bako <ciodide@iite.st>")

(custom-theme-set-variables
 'iite-dark
 )

(let* (
       (class '((class color) (min-colors 4096)))
       ;; IITE color
       (iite-0 "#000000") (iite-1 "#383838") (iite-2 "#545454") (iite-3 "#707070")
       (iite-4 "#8c8c8c") (iite-5 "#a8a8a8") (iite-6 "#c4c4c4") (iite-7 "#ffffff")
       (iite-8 "#120012") (iite-9 "#380d38") (iite-a "#541d54") (iite-b "#703270")
       (iite-c "#8c4f8c") (iite-d "#a871a8") (iite-e "#c499c4") (iite-f "#ffedff")
       ;; base 16
       (dim-black   "#050505") (light-black   "#c4c4c4")
       (dim-red     "#c42d2d") (light-red     "#c49999")
       (dim-green   "#2dc42d") (light-green   "#99c499")
       (dim-yellow  "#c4c42d") (light-yellow  "#c4c499")
       (dim-blue    "#2d2dc4") (light-blue    "#9999c4")
       (dim-magenta "#c42dc4") (light-magenta "#c499c4")
       (dim-cyan    "#2dc4c4") (light-cyan    "#99c4c4")
       (dim-white   "#fafafa") (light-white   "#ffffff")
       )
  (custom-theme-set-faces
   'iite-dark
   ;; main
   `(default
     ((,class
	(:background ,iite-0 :foreground ,iite-7 :font "Source Code Pro-14"))))
   `(cursor
     ((,class
       (:background ,iite-f))))
   `(border-color
     ((,class
       (:background ,iite-e))))
   `(fringe
     ((,class
       (:background ,iite-1))))
   ;; mode-line
   `(mode-line
     ((,class
       (:background ,iite-e :foreground ,iite-8))))
   `(mode-line-inactive
     ((,class
       (:background ,iite-8 :foreground ,iite-e))))
   `(region
     ((,class
       (:background ,iite-1))))
   ;; status
   `(success
     ((,class
       (:foreground ,dim-green))))
   `(warning
     ((,class
       (:foreground ,dim-yellow))))
   `(error
     ((,class
       (:foreground ,dim-red))))
   ;; text
   `(font-lock-variable-face
     ((,class
       (:foreground ,light-red))))
   `(font-lock-constant-face
     ((,class
       (:foreground ,light-green))))
   `(font-lock-type-face
     ((,class
       (:foreground ,light-yellow))))
   `(font-lock-string-face
     ((,class
       (:foreground ,light-blue))))
   `(font-lock-keyword-face
     ((,class
       (:foreground ,light-magenta))))
   `(font-lock-function-name-face
     ((,class
       (:foreground ,light-cyan))))
   `(font-lock-comment-face
     ((,class
       (:foreground ,iite-2))))
   ;; TBD
   `(font-lock-builtin-face
     ((,class
       (:foreground ,iite-e))))
   `(font-lock-warning-face
     ((,class
       (:foreground ,dim-yellow))))

   ;; link
   `(link
     ((,class
       (:foreground ,dim-magenta))))
   `(link-visited
     ((,class
       (:foreground ,light-magenta))))

   ;; highlight
   `(highlight
     ((,class
       (:foreground ,iite-e :background ,iite-9))))
   `(isearch
     ((,class
       (:foreground ,iite-e :background ,iite-9))))

   ;; mini buffer
   `(minibuffer-prompt
     ((,class
       (:foreground ,iite-e))))
   ))

;;font
(set-fontset-font t
		  'latin "Noto Sans")
(set-fontset-font t
		  'han "Noto Sans CJK SC")
(set-fontset-font t
		  'cjk-misc "Noto Sans CJK SC")

(provide-theme 'iite-dark)

