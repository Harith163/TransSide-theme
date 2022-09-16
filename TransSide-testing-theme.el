(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme TransSide "Custom theme inspired by the colors of the Trans Flag."
 
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF)))
		      
		      ;; Specify the color palette for each of the classes above.
		      ;;basic bg/fg colors
		      (bg-main "#00000f")
		      (bg-black "#0f0f2f")
		      (fg-white "#FFFFFF")
		      (fg-text "#ffe1ff")

		      ;;Pinks & Blues
		      (pink "#e85e8a")
		      (blue "#11bcFF")

		      (pink-alt "#ff81b8")
		      (blue-alt "#53b9ff")

		      (pink-dimmed "#c83e6a")
		      (blue-dimmed "#118cdc")

		      (pink-alt-dimmed "#cf5198")
		      (blue-alt-dimmed "#73a9dd")

		      ;;Purples & Violets
		      (purple "#6E58BB")
		      (purple-alt "#b693ff")

		      (purple-dimmed "#341c62")
		      (purple-alt-dimmed "#493b80")

		      ;;Alternate Palate
		      (pastel-blue "#7eb8fa")
		      (pastel-aqua "#92ddea")
		      (pastel-pink "#ffa5d8")
		      (pastel-lilac "#be9ddf")
		      (pastel-violet "#9579d1")


		      ;;Alt grays and dark's
		      (gray "#f8f8f8")
		      (gray-dark "#d0d0d0")
		      (gray-alt "#3a3a3a")
		      (gray-alt-dark "#141414")

		      ;;Level Colors
		      (level1 "#FF619D")
		      (level2 "#00ccFF")
		      (level3 "#8368D5")
		      (level4 "#35D7E5")
		      (level5 "#FF91BA")
		      (level6 "#21CFFC")
		      (level7 "#6B53AE")
		      (level8 "#2CB3BE")

 		      (standout "#00FF94")
		      ;; (standout "#00AAA6")
				      
		      ;;Warning, comment, and other miscellanious colors
		      (builtin "#926EBE")
		      (comment "#536Aaa")
		      (warning "#ff0069")
		      (docstr "#dfaEf8")

		      (background-standout1 "#37FF00")
		      (background-standout2 "#006AFF")
		      
		      )
		     
		     ;; specifications for Emacs faces.
		     
		     (;; Default faces. Most commonly seen, used and inherited.
		      (default (:foreground fg-text :background bg-main))

		      (font-lock-builtin-face (:foreground builtin))
		      (font-lock-comment-face (:foreground comment))
		      (font-lock-doc-face (:foreground docstr))
		      (font-lock-keyword-face (:foreground purple-alt :bold t))
		      (font-lock-warning-face (:foreground warning))

		      (font-lock-string-face (:foreground pink))
		      (font-lock-type-face (:foreground purple-alt))
     		      (font-lock-function-name-face (:foreground blue))
		      (font-lock-variable-name-face (:foreground blue-alt))
		      (font-lock-constant-face (:foreground purple))
		      

		      ;;Other basic things
		      (scroll-bar nil)
		      (border nil)
		      (fringe (:background bg-main))

		      (cursor (:background pink-alt :foreground gray-alt-dark))
		      (highlight (:foreground gray-alt-dark :background pink-alt))
		      (region (:foreground gray-alt-dark :background pink-alt))

		      (link (:foreground pastel-blue :underline t))

		      ;;more basic things!!
		      (bold (:weight 'bold :foreground standout))
		      (warning (:weight 'bold :foreground warning))
		      
		      ;;line number mode
		      (linum (:height 0.85 :inherit '(shadow default)))
		      (linum-relative-current-face (:weight 'bold :foreground blue :background bg-main :inherit 'linum))
		      (line-number (:inherit ('shadow 'default)))
		      (line-number-current-line (:inherit 'line-number))

		      ;;iSearch
		      (isearch (:weight 'bold :inherit 'highlight))
		      (isearch-fail (:background bg-main :foreground warning))

		      ;;Minibuffer prompt
		      (minibuffer-prompt (:weight 'bold :foreground blue))

		      ;;Outlines/Headings
		      (outline-1 (:foreground level1))
		      (outline-2 (:foreground level2))
		      (outline-3 (:foreground level3))
		      (outline-4 (:foreground level4))
		      (outline-5 (:foreground level5))
		      (outline-6 (:foreground level6))
		      (outline-7 (:foreground level7))
		      (outline-8 (:foreground level8))

		      ;;Org-mode stuff
		      (org-todo (:weight 'bold :box nil :foreground pastel-lilac))
		      (org-done (:weight 'bold :box nil :foreground pastel-violet))

		      (org-headline-todo (:foreground purple-alt))
		      (org-headline-done (:foreground purple))

		      (org-priority (:inherit 'font-lock-keyword-face))

		      (org-date (:underline nil :foreground pastel-blue))
		      (org-date-selected (:inverse-video t :foreground pink))
		      
		      (org-level-1 (:inherit 'outline-1 :weight 'bold :height 1.3 :slant 'italic))
		      (org-level-2 (:inherit 'outline-2 :weight 'normal :height 1.1 :slant 'italic))
		      (org-level-3 (:inherit 'outline-3 :weight 'normal))
		      (org-level-4 (:inherit 'outline-4 :weight 'normal))
		      (org-level-5 (:inherit 'outline-5 :weight 'normal))
		      (org-level-6 (:inherit 'outline-6 :weight 'normal))
		      (org-level-7 (:inherit 'outline-7 :weight 'normal))
		      (org-level-8 (:inherit 'outline-8 :weight 'normal))

		      (org-block (:background "#00001f"))
		      (org-block-begin-line (:inherit 'font-lock-comment-face :background bg-black :box (:color pastel-violet)))
		      (org-block-end-line (:inherit 'org-block-begin-line))

		      (org-quote (:slant 'italic :inherit 'org-block))
		      (org-verse (:slant 'italic :inherit 'org-block))

		      (org-special-keyword (:inherit 'font-lock-keyword-face))

		      (org-footnote (:underline t :foreground pastel-pink))

		      (org-checkbox (:inherit 'bold :foreground pastel-pink))
		      (org-checkbox-statistics-todo (:inherit 'org-todo))
		      (org-checkbox-statistics-done (:inherit 'org-done))

		      (org-document-title (:height 1.5 :weight 'bold :slant 'italic :foreground blue-alt))
		      (org-document-info (:height 1.5 :foreground blue-alt))
		      (org-document-info-keyword (:height 1.5 :inherit 'font-lock-keyword-face))

		      (org-scheduled-previously (:foreground blue-alt-dimmed))

		      (org-latex-and-related (:foreground standout))
		      
		      (org-agenda-current-time (:foreground standout :background bg-main))
		      (org-agenda-dimmed-todo-face (:foreground purple-alt-dimmed))
		      (org-agenda-structure (:weight 'bold :box (:color pastel-violet) :inherit 'font-lock-constant-face))
		      (org-agenda-date (:height 1.1 :foreground blue-dimmed))
		      (org-agenda-date-today (:height 1.4 :weight 'bold :foreground blue-alt))
		      (org-agenda-date-weekend (:weight 'normal :foreground purple))
		      (org-agenda-done (:height 1.1 :inherit 'org-done))

		      (org-scheduled (:foreground pink))
		      (org-scheduled-today (:foreground pastel-pink))

		      (org-time-grid (:foreground purple-alt-dimmed))

		      ;;font-latex
		      (font-latex-math-face (:inherit 'bold :foreground pink-alt))

		      ;;Rainbow delimiters
		      (rainbow-delimiters-depth-1-face (:foreground fg-white :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-2-face (:foreground level1 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-3-face (:foreground level2 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-4-face (:foreground level3 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-5-face (:foreground level4 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-6-face (:foreground level5 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-7-face (:foreground level6 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-8-face (:foreground level7 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-depth-9-face (:foreground level8 :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-mismatched-face (:inherit 'rainbow-delimiters-unmatched-face))
		      (rainbow-delimiters-unmatched-face (:foreground warning))
		      (rainbow-delimiters-base-error-face (:foreground bg-black :inherit 'rainbow-delimiters-base-face))
		      (rainbow-delimiters-base-face (:weight 'bold))

		      ;;Company
		      (company-tooltip (:foreground gray :background bg-black :box (:color pastel-violet)))
		      (company-tooltip-selection (:foreground gray-alt-dark :background pink-alt))
		      (company-tooltip-search (:foreground gray))
		      (company-tooltip-search-selection (:foreground gray-alt-dark :background pink-alt))
		      (company-echo-common (:foreground gray))
		      (company-tooltip-common (:foreground gray))
		      (company-tooltip-annotation (:foreground gray))
		      (company-scrollbar-fg nil)
		      (company-scrollbar-bg (:background bg-main))
		      (company-preview (:foreground gray-alt-dark :background pink-alt))
		      (company-preview-common (:inherit 'company-preview))
		      (company-preview-search (:background bg-main :foreground gray))
		      (company-echo nil)

		      ;;Avy and Ace-Window
		      (avy-lead-face (:foreground gray-alt-dark :background background-standout1))
		      (avy-lead-face-0 (:foreground gray-alt-dark :background background-standout2))
		  		      
		      (aw-leading-char-face (:height 2.0 :foreground warning))
		      (aw-background-face (:foreground purple-dimmed))

		      ;;Modeline-general.
		      (mode-line (:foreground fg-white :background purple))
		      (mode-line-inactive (:foreground gray-dark :background purple-dimmed))
		      
		      ;;Nano modeline.
		      (nano-modeline-inactive-status-** (:inherit 'mode-line-inactive  :background pastel-blue :foreground bg-black))
		      (nano-modeline-inactive-status-RW (:inherit 'mode-line-inactive  :background purple-alt-dimmed))
		      (nano-modeline-inactive-status-RO (:inherit 'mode-line-inactive  :background purple-alt-dimmed))
		      (nano-modeline-inactive-secondary (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive-primary (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive-name (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive (:inherit 'mode-line-inactive))
		      
		      (nano-modeline-active-status-** (:inherit 'mode-line  :background pastel-aqua :foreground bg-black))
		      (nano-modeline-active-status-RW (:inherit 'mode-line :background purple-alt))
		      (nano-modeline-active-status-RO (:inherit 'mode-line :background purple-alt))
		      (nano-modeline-active-secondary (:inherit ('mode-line 'italic)))
		      (nano-modeline-active-primary (:inherit ('mode-line 'italic)))
		      (nano-modeline-active-name (:inherit ('mode-line 'bold)))
		      (nano-modeline-active (:inherit 'mode-line))

		      ;;Ivy
		      (ivy-current-match (:extend t :foreground gray-alt-dark :background pink-alt))
		      (ivy-minibuffer-match-highlight (:inherit 'highlight))
		      (ivy-minibuffer-match-face-1 (:weight 'bold :inherit 'ivy-current-match))
		      (ivy-minibuffer-match-face-2 (:weight 'bold :foreground standout))
		      (ivy-minibuffer-match-face-3 (:weight 'bold :foreground standout))
		      (ivy-minibuffer-match-face-4 (:weight 'bold :foreground standout))

		      ;;Swiper
		      (swiper-match-face-1 (:weight 'bold :inherit 'highlight))
		      (swiper-match-face-2 (:weight 'bold :foreground standout))
		      (swiper-match-face-3 (:weight 'bold :foreground standout))
		      (swiper-match-face-4 (:weight 'bold :foreground standout))

		      ;;mu4e
		      )
		     ;; Forms after the face specifications are evaluated.
		     ;; (palette vars can be used, read below for details.)
		     )

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'TransSide)

;; Local Variables:
;; eval: (progn (rainbow-mode) (autothemer-colorize))
;; End:
