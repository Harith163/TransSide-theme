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
		      (bg-dark "#303030")
		      (bg-dark2 "#1f1f1f")		      
		      (bg-gray "#c6c6c6")
		      (fg-white "#FFFFFF")
		      (fg-dark "#5e5e5e")
		      (fg-gray "#919191")
		      (fg-text "#ffe1ff")

		      ;;dark's
		      (aqua-dark "#007086")
		      (purple-dark "#6A53AE")

		      ;;lights
		      (pink-light "#ff81b8")
		      (aqua-light "#30E0F4")
		      (blue2-light "#93c9ff")

		      ;;light alt
		      (pink-light-alt "#e85e8a")
		      (aqua-light-alt "#00FDFF")

		      ;;Alt grays and dark's
		      (mygray1 "#f8f8f8")
		      (mygray1-dark "#d0d0d0")
		      (mygray2 "#3a3a3a")
		      (mygray2-dark "#141414")

		      ;;Level Colors
		      (level1 "#FF619D")
		      (level2 "#00ccFF")
		      (level3 "#8368D5")
		      (level4 "#35D7E5")
		      (level5 "#FF91BA")
		      (level6 "#21CFFC")
		      (level7 "#6B53AE")
		      (level8 "#2CB3BE")

		      ;;Alternate Palate
		      (pastel-blue "#7eb8fa")
		      (pastel-aqua "#92ddea")
		      (pastel-pink "#ffa5d8")
		      (pastel-lilac "#be9ddf")
		      (pastel-violet "#9579d1")

 		      ;; (standout "#00FF94")
		      (standout "#00AAA6")
				      
		      ;;Warning, comment, and other miscellanious colors
		      (builtin "#8C73ED")
		      (comment "#536Aaa")
		      (warning "#ff0069")
		      (docstr "#C0AED8")

		      (background-standout1 "#37FF00")
		      (background-standout2 "#006AFF")

		      (mode-line-no-1 "#3f2f6f")
		      (mode-line-no-2 "#59419D")

		      )
		     
		     ;; specifications for Emacs faces.
		     
		     (;; Default faces. Most commonly seen, used and inherited.
		      (default (:foreground fg-text :background bg-main))

		      (font-lock-builtin-face (:foreground builtin))
		      (font-lock-comment-face (:foreground comment))
		      (font-lock-doc-face (:foreground docstr))
		      (font-lock-keyword-face (:foreground pastel-lilac :bold t))
		      (font-lock-negation-char-face (:foreground purple-dark))
		      (font-lock-string-face (:foreground pink-light-alt))
		      (font-lock-type-face (:foreground pink-light))
     		      (font-lock-function-name-face (:foreground aqua-light))
		      (font-lock-variable-name-face (:foreground aqua-light-alt))
		      (font-lock-constant-face (:foreground pastel-violet))
		      (font-lock-warning-face (:foreground warning))

		      ;;Other basic things
		      (scroll-bar nil)
		      (border nil)
		      (cursor (:background pink-light-alt :foreground mygray2-dark))
		      (fringe (:background bg-main))
		      (highlight (:foreground mygray2-dark :background pink-light-alt))
		      (lazy-highlight (:background fg-gray))
		      (region (:foreground mygray2-dark :background pink-light-alt))
		      (link (:foreground pastel-blue :underline t))

		      ;;more basic things!!
		      (bold (:weight 'bold :foreground standout))
		      (warning (:weight 'bold :foreground warning))
		      (match (:background level7))

		      ;;line number mode
		      (linum (:height 0.85 :inherit '(shadow default)))
		      (linum-relative-current-face (:weight 'bold :foreground pastel-aqua :background mygray2 :inherit 'linum))
		      (line-number (:inherit ('shadow 'default)))
		      (line-number-current-line (:inherit 'line-number))

		      ;;iSearch
		      (isearch (:weight 'bold :foreground warning :background mygray2-dark))
		      (isearch-fail (:background bg-black))

		      ;;Minibuffer prompt
		      (minibuffer-prompt (:weight 'bold :foreground aqua-light))

		      ;;Org-mode stuff
		      (org-code (:foreground mygray1))
		      (org-hide (:foreground bg-main))
		      (org-date (:foreground blue2-light :underline nil))
		      (org-footnote (:foreground mygray1-dark :underline t))
		      (org-link (:inherit 'link))
		      (org-special-keyword (:foreground pastel-blue))
		      
		      (org-todo (:foreground pastel-pink :bold t :box nil))
		      (org-done (:foreground blue2-light :bold t :box nil))

		      (org-headline-done (:foreground pastel-aqua))
		      
		      (org-warning (:foreground warning :underline t))
		      (org-agenda-structure (:foreground mygray1-dark :background bg-dark :weight 'bold :box (:color bg-gray) ))
		      (org-agenda-date (:foreground aqua-light-alt :height 1.1))
		      (org-agenda-date-weekend (:foreground bg-gray :weight 'normal ))
		      (org-agenda-date-today (:foreground aqua-light :weight 'bold :height 1.4))
		      (org-agenda-structure (:foreground aqua-light-alt :height 1.1))
		      (org-agenda-done (:foreground mygray2 :height 1.1))
		      (org-scheduled (:foreground pink-light))
		      (org-scheduled-today (:foreground purple-dark))
		      (org-ellipsis (:foreground builtin))
		      (org-varbatim (:foreground bg-gray))
		      (org-document-info-keyword (:foreground pastel-lilac :height 1.5))
		      (org-document-info (:foreground pastel-blue :height 1.5))
		      (org-document-title (:foreground pastel-blue :weight 'bold :height 1.5 :italic t))

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
		      
		      (org-quote (:inherit 'org-block :slant 'italic))
		      (org-verse (:inherit 'org-block :slant 'italic))

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

		      ;;Outlines/Headings
		      (outline-1 (:foreground level1))
		      (outline-2 (:foreground level2))
		      (outline-3 (:foreground level3))
		      (outline-4 (:foreground level4))
		      (outline-5 (:foreground level5))
		      (outline-6 (:foreground level6))
		      (outline-7 (:foreground level7))
		      (outline-8 (:foreground level8))

		      ;;latex faces
		      (font-latex-math-face (:foreground standout :weight 'semi-bold))
		      (font-latex-sectioning-2-face (:height 2.0 :foreground blue2-light))
		      
		      ;;Company
		      (company-tooltip (:foreground mygray1 :background bg-black :box (:color pastel-violet)))
		      (company-tooltip-selection (:foreground mygray2-dark :background pink-light-alt))
		      (company-tooltip-search (:foreground mygray1))
		      (company-tooltip-search-selection (:foreground mygray2-dark :background pink-light-alt))
		      (company-echo-common (:foreground mygray1))
		      (company-tooltip-common (:foreground mygray1))
		      (company-tooltip-annotation (:foreground mygray1))
		      (company-scrollbar-fg nil)
		      (company-scrollbar-bg (:background bg-main))
		      (company-preview (:foreground mygray2-dark :background pink-light-alt))
		      (company-preview-common (:inherit 'company-preview))
		      (company-preview-search (:background bg-main :foreground mygray1))
		      (company-echo nil)

		      ;;Avy and Ace-Window
		      (avy-background-face (:foreground fg-dark))
		      (avy-lead-face (:foreground bg-black :background background-standout1))
		      (avy-lead-face-0 (:foreground bg-black :background background-standout2))
		      (avy-lead-face-1 (:foreground bg-black :background pink-light))
		      
		      (aw-leading-char-face (:height 2.0 :foreground warning))

		      ;;Modeline-general.
		      (mode-line (:foreground fg-white :background purple-dark))
		      (mode-line-inactive (:foreground mygray1-dark :background mode-line-no-1))
		      
		      ;;Nano modeline.
		      (nano-modeline-inactive-status-** (:inherit 'mode-line-inactive  :background pastel-blue :foreground bg-black))
		      (nano-modeline-inactive-status-RW (:inherit 'mode-line-inactive  :background mode-line-no-2))
		      (nano-modeline-inactive-status-RO (:inherit 'mode-line-inactive  :background mode-line-no-2))
		      (nano-modeline-inactive-secondary (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive-primary (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive-name (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive (:inherit 'mode-line-inactive))
		      
		      (nano-modeline-active-status-** (:inherit 'mode-line  :background pastel-aqua :foreground bg-black))
		      (nano-modeline-active-status-RW (:inherit 'mode-line :background pastel-violet))
		      (nano-modeline-active-status-RO (:inherit 'mode-line :background pastel-violet))
		      (nano-modeline-active-secondary (:inherit ('mode-line 'italic)))
		      (nano-modeline-active-primary (:inherit ('mode-line 'italic)))
		      (nano-modeline-active-name (:inherit ('mode-line 'bold)))
		      (nano-modeline-active (:inherit 'mode-line))

		      ;;Ivy
		      (ivy-current-match (:extend t :foreground mygray2-dark :background pink-light-alt))
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
		      (mu4e-unread-face (:weight 'bold :foreground pastel-blue))
		      (mu4e-trashed-face (:strike-through t :foreground mygray2))
		      (mu4e-draft-face (:foreground mygray1-dark))
		      (mu4e-flagged-face (:weight 'bold :foreground standout))
		      (mu4e-replied-face (:weight 'normal :slant 'normal :foreground purple-dark))
		      (mu4e-forwarded-face (:weight 'normal :slant 'normal :foreground pastel-violet))

		      (mu4e-header-face (:inherit 'default))
		      (mu4e-related-face (:slant 'italic :inherit 'default))
		      (mu4e-header-title-face (:foreground pastel-lilac))
		      (mu4e-header-highlight-face (:weight 'bold :underline t :extend t :inherit 'highlight))
		      (mu4e-header-key-face (:weight 'bold :foreground aqua-light))
		      (mu4e-header-value-face (:foreground blue2-light))
		      (mu4e-special-header-value-face (:foreground pink-light))

		      (mu4e-link-face (:inherit 'link))
		      (mu4e-highlight-face (:inherit 'highlight))
		      (mu4e-title-face (:weight 'bold :foreground pink-light))
		      (mu4e-warning-face (:weight 'bold :slant 'normal :inherit 'font-lock-warning-face))
		      
		      
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
;; eval: (rainbow-mode)
;; End:
