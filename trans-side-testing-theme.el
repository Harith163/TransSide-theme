(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme trans-side-testing "Custom theme using the transflag colors."
 
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF)))
		      
		      ;; Specify the color palette for each of the classes above.
		      ;;basic bg/fg colors
		      (bg-black      "#080808")
		      (bg-dark       "#303030")
		      (bg-gray       "#c6c6c6")
		      (fg-white      "#FFFFFF")
		      (fg-dark       "#5e5e5e")
		      (fg-gray       "#919191")

		      ;;darks
		      (pink-dark     "#a43261")
		      (blue-dark     "#006ca5")
		      (aqua-dark     "#007086")
		      (purple-dark   "#6751a6")
		      (magenta-dark  "#913e88")
		      (blue2-dark    "#0061b1")

		      ;;lights
		      (pink-light    "#ff81b8")
		      (blue-light    "#3bd6ff")
		      (aqua-light    "#00ddf4")
		      (purple-light  "#a38cc5")
		      (magenta-light "#ffa7f6")
		      (blue2-light   "#93c9ff")

		      ;;light alt
		      (pink-light-alt "#e85e8a")
		      (aqua-light-alt "#00d3ff")

		      ;;Alt grays and darks
		      (mygray1 "#f8f8f8")
		      (mygray1-dark "#d0d0d0")
		      (mygray2 "#3a3a3a")
		      (mygray2-dark "#141414")

		      ;;Level Colors
		      (level1 "#03B8FF")
		      (level2 "#e85e8a")
		      (level3 "#00CAFF")
		      (level4 "#8A51A6")

		      ;;Alternate Pallate
		      (pastel-blue "#7eb8da")
		      (pastel-aqua "#92ddea")
		      (pastel-pink "#ffa5d8")
		      (pastel-lilac "#be9ddf")
		      (pastel-violet "#9579d1")
				      
		      ;;Warning, comment, and other miscellanious colors
		      (builtin "#00a0af")
		      (comment "#37465f")
		      (warning "#ff0069"))
		     
		     ;; specifications for Emacs faces.
		     (;; Default faces. Most commonly seen, used and inherited.
		      (default (:font "DejaVu Sans Mono 15" :foreground fg-white :background bg-black))
		      (font-lock-builtin-face (:foreground builtin))
		      (font-lock-comment-face (:foreground comment))
		      (font-lock-doc-face (:foreground purple-dark))
		      (font-lock-negation-char-face (:foreground purple-dark))
		      (font-lock-function-name-face (:foreground magenta-dark))
		      (font-lock-keyword-face (:foreground aqua-light :bold t))
		      (font-lock-string-face (:foreground pink-light-alt))
		      (font-lock-type-face (:foreground pink-light))
		      (font-lock-variable-name-face (:foreground aqua-light-alt))
		      (font-lock-warning-face (:foreground warning))

		      ;;Other basic things
		      (scroll-bar nil)
		      (border nil)
		      (cursor (:background fg-gray))
		      (fringe (:background bg-black))
		      (highlight (:foreground mygray1-dark :background mygray2))
		      (region (:foreground mygray2-dark :background mygray1))
		      (line-number (:inherit ('shadow 'default)))
		      (line-number-current-line (:inherit 'line-number))


		      ;;Mode line 
		      (mode-line (:box (:line-width 1 :color nil) :foreground pink-light-alt :background bg-black))
		      (mode-line-inactive (:weight 'light :box (:line-width 1 :color nil :style 'pressed-button) :foreground pink-light-alt :background bg-black :inherit 'mode-line))
		      (mode-line-highlight (:box nil :foreground aqua-light :weight 'bold))
		      (mode-line-emphasis (:weight 'bold :foreground mygray1))
		      (mode-line-buffer-id (:weight 'bold :bold t :foreground pink-light-alt :background nil))


		      ;;iSearch
		      (isearch (:weight 'bold :foreground warning :background mygray2))
		      (isearch-fail (:background bg-black))

		      ;;Minibuffer prompt
		      (minibuffer-prompt (:weight 'bold :foreground aqua-light))

		      ;;Org-mode stuff
		      (org-code (:foreground mygray1))
		      (org-hide (:foreground mygray1-dark))
		      (org-date (:foreground aqua-light-alt :underline t))
		      (org-footnote (:foreground mygray1-dark :underline t))
		      (org-link (:foreground pink-light :underline t))
		      (org-special-keyword (:foreground magenta-dark))
		      (org-block (:foreground mygray1-dark))
		      (org-quote (:inherit 'org-block :slant 'italic))
		      (org-verse (:inherit 'org-block :slant 'italic))
		      (org-todo (:foreground aqua-light :bold t))
		      (org-done (:foreground blue2-dark :bold t))
		      (org-warning (:foreground warning :underline t))
		      (org-agenda-structure (:foreground mygray1-dark :background bg-dark :weight 'bold :box (:color bg-gray) ))
		      (org-agenda-date (:foreground aqua-light-alt :height 1.1))
		      (org-agenda-date-weekend (:foreground bg-gray :weight 'normal ))
		      (org-agenda-date-today (:foreground aqua-light :weight 'bold :height 1.4))
		      (org-agenda-structure (:foreground aqua-light-alt :height 1.1))
		      (org-agenda-done (:foreground mygray2 :height 1.1))
		      (org-scheduled (:foreground pink-light))
		      (org-scheduled-today (:foreground magenta-dark))
		      (org-ellipsis (:foreground builtin))
		      (org-varbatim (:foreground bg-gray))
		      (org-document-info-keyword (:foreground magenta-dark))

		      (org-level-1 (:inherit 'outline-1 :weight 'bold :height 1.1))

		      ;;Rainbow delimiters
		      (rainbow-delimiters-depth-1-face (:foreground mygray1))
		      (rainbow-delimiters-depth-2-face (:foreground pink-light))
		      (rainbow-delimiters-depth-3-face (:foreground aqua-light-alt))
		      (rainbow-delimiters-depth-4-face (:foreground purple-dark))
		      (rainbow-delimiters-depth-5-face (:foreground aqua-light))
		      (rainbow-delimiters-depth-6-face (:foreground mygray1))
		      (rainbow-delimiters-depth-7-face (:foreground pink-light))
		      (rainbow-delimiters-depth-8-face (:foreground aqua-light-alt))
		      (rainbow-delimiters-depth-9-face (:foreground purple-light :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-mismatched-face (:inherit 'rainbow-delimiters-unmatched-face))
		      (rainbow-delimiters-unmatched-face (:foreground warning))
		      (rainbow-delimiters-base-error-face (:foreground bg-black :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-base-face nil)

		      ;;Outlines/Headings
		      (outline-1 (:inherit 'font-lock-function-name-face))
		      (outline-2 (:inherit 'font-lock-variable-name-face))
		      (outline-3 (:inherit 'font-lock-keyword-face))
		      (outline-4 (:inherit 'font-lock-comment-face))
		      (outline-5 (:inherit 'font-lock-type-face))
		      (outline-6 (:inherit 'font-lock-constant-face))
		      (outline-7 (:inherit 'font-lock-builtin-face))
		      (outline-8 (:inherit 'font-lock-string-face))
		      )	     
		     ;; Forms after the face specifications are evaluated.
		     ;; (palette vars can be used, read below for details.)
		     )

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'trans-side-testing)

