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
		      (pink "#e86f8a")
		      (blue "#11acFF")

		      (pink-alt "#ff81b8")
		      (blue-alt "#53b9ff")

		      (pink-dimmed "#c83e6a")
		      (blue-dimmed "#118cdc")

		      (pink-alt-dimmed "#df6f9f")
		      (blue-alt-dimmed "#73a9dd")

		      ;;Purples & Violets
		      (purple "#6E58BB")
		      (purple-alt "#b693ff")

		      (purple-dimmed "#341c62")
		      (purple-alt-dimmed "#493b80")

		      ;;Alternate Palate
		      (pastel-blue "#AEC6FF")
		      (pastel-aqua "#92ddea")
		      (pastel-pink "#eea5d8")
		      (pastel-lilac "#be9ddf")
		      (pastel-violet "#9579d1")


		      ;;Alt grays and dark's
		      (gray "#f8f8f8")
		      (gray-dark "#d0d0d0")
		      (gray-alt "#3a3a3a")
		      (gray-alt-dark "#141414")

		      ;;Level Colors
		      ;; (level1 "#FF619D")
		      ;; (level2 "#00ccFF")
		      ;; (level3 "#8368D5")
		      ;; (level4 "#35a7f5")
		      ;; (level5 "#FF91BA")
		      ;; (level6 "#21CFFC")
		      ;; (level7 "#6B53AE")
		      ;; (level8 "#2C93fE")

		      (level1 "#bb99ff")
		      (level2 "#7777ff")
		      (level3 "#bb88ff")
		      (level4 "#8877ff")
		      (level5 "#bb77ff")
		      (level6 "#9977ff")
		      (level7 "#bb66ff")
		      (level8 "#aa66ff")

 		      (standout "#00FF94")
		      ;; (standout "#00AAA6")
				      
		      ;;Warning, comment, and other miscellanious colors
		      (builtin "#Bf7fBf")
		      (comment "#a88fac")
		      (warning "#ff0069")
		      (docstr "#dfaEf8")
		      (highlight "#0f1f3f")

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
		      (font-lock-constant-face (:foreground blue-alt))
		      

		      ;;Other basic things
		      (scroll-bar nil)
		      (border nil)
		      (fringe (:background bg-main))

		      (cursor (:background pink-alt :foreground gray-alt-dark))
		      (highlight (:weight 'bold :foreground pink-alt :background highlight))
		      (region (:weight 'bold :foreground pink-alt :background highlight))

		      (link (:foreground pastel-pink :underline t))

		      ;;more basic things!!
		      (bold (:weight 'bold :foreground standout))
		      (warning (:weight 'bold :foreground warning))
		      
		      ;;line number mode
		      (linum (:height 0.85 :inherit '(shadow default)))
		      (linum-relative-current-face (:weight 'bold :foreground blue :background bg-main :inherit 'linum))
		      (line-number (:inherit ('shadow 'default)))
		      (line-number-current-line (:inherit 'linum-relative-current-face))

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
		      (org-todo (:weight 'bold :box nil :foreground purple-alt))
		      (org-done (:weight 'bold :box nil :foreground pastel-violet))

		      (org-headline-todo (:foreground pink-alt))
		      (org-headline-done (:foreground blue-alt))

		      (org-priority (:inherit 'font-lock-keyword-face))

		      (org-date (:underline nil :foreground pastel-blue))
		      (org-date-selected (:inverse-video t :foreground pink-alt))
		      
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

		      (org-footnote (:inherit 'link))

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

		      (org-scheduled (:foreground pink-alt))
		      (org-scheduled-today (:foreground pastel-pink))

		      (org-time-grid (:foreground purple-alt-dimmed))

		      (org-ellipsis (:foreground purple))

		      ;;font-latex
		      (font-latex-math-face (:inherit 'bold :foreground pink-alt))
		      (font-latex-sectioning-5-face (:weight 'bold :foreground blue-alt :inherit 'variable-pitch))
		      (font-latex-sectioning-4-face (:height 1.1 :inherit 'font-latex-sectioning-5-face))
		      (font-latex-sectioning-3-face (:height 1.1 :inherit 'font-latex-sectioning-4-face))
		      (font-latex-sectioning-2-face (:height 1.1 :inherit 'font-latex-sectioning-3-face))
		      (font-latex-sectioning-1-face (:height 1.1 :inherit 'font-latex-sectioning-2-face))
		      (font-latex-sectioning-0-face (:height 1.1 :inherit 'font-latex-sectioning-1-face))
		      (font-latex-bold-face (:inherit 'bold))
		      (font-latex-italic-face (:inherit 'italic))
		      (font-latex-underline-face (:inherit 'underline))
		      (font-latex-string-face (:inherit 'font-lock-string-face))
		      (font-latex-warning-face (:foreground warning :inherit 'bold))
		      (font-latex-verbatim-face (:foreground pastel-lilac))
		      (font-latex-slide-title-face (:height 1.2 :weight 'bold :inherit 'variable-pitch :foreground purple-alt))
		      (font-latex-doctex-documentation-face (:foreground docstr))


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
		      (company-tooltip (:foreground fg-text :background bg-black :box (:color pastel-violet)))
		      (company-tooltip-selection (:inherit 'highlight))
		      (company-tooltip-search (:foreground fg-text))
		      (company-tooltip-search-selection (:inherit 'highlight))
		      (company-echo-common (:foreground fg-text))
		      (company-tooltip-common (:inherit 'highlight))
		      (company-tooltip-annotation (:foreground fg-text))
		      (company-scrollbar-fg nil)
		      (company-scrollbar-bg (:background bg-main))
		      (company-preview (:inhert 'highlight))
		      (company-preview-common (:inherit 'company-preview))
		      (company-preview-search (:background bg-main :foreground gray))
		      (company-echo nil)

		      ;;Avy and Ace-Window
		      (avy-lead-face (:foreground gray-alt-dark :background background-standout1))
		      (avy-lead-face-0 (:foreground gray-alt-dark :background background-standout2))
		  		      
		      (aw-leading-char-face (:height 2.0 :foreground warning))
		      (aw-background-face (:foreground purple-dimmed))

		      ;;Mode-line-general.
		      (mode-line (:foreground fg-white :background purple))
		      (mode-line-inactive (:foreground gray-dark :background purple-dimmed))
		      
		      ;;Nano modeline.
		      (nano-modeline-inactive-status-** (:inherit 'mode-line-inactive  :background pastel-blue :foreground gray-alt-dark))
		      (nano-modeline-inactive-status-RW (:inherit 'mode-line-inactive  :background purple-alt-dimmed :foreground gray-alt-dark))
		      (nano-modeline-inactive-status-RO (:inherit 'mode-line-inactive  :background purple-alt-dimmed :foreground gray-alt-dark))
		      (nano-modeline-inactive-secondary (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive-primary (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive-name (:inherit 'mode-line-inactive))
		      (nano-modeline-inactive (:inherit 'mode-line-inactive))
		      
		      (nano-modeline-active-status-** (:inherit 'mode-line  :background pastel-aqua :foreground gray-alt-dark))
		      (nano-modeline-active-status-RW (:inherit 'mode-line :background purple-alt :foreground gray-alt-dark))
		      (nano-modeline-active-status-RO (:inherit 'mode-line :background purple-alt :foreground gray-alt-dark))
		      (nano-modeline-active-secondary (:inherit ('mode-line 'italic)))
		      (nano-modeline-active-primary (:inherit ('mode-line 'italic)))
		      (nano-modeline-active-name (:inherit ('mode-line 'bold)))
		      (nano-modeline-active (:inherit 'mode-line))

		      ;;Ivy
		      (ivy-current-match (:extend t :foreground pink-alt :background bg-black))
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
		      (mu4e-unread-face (:weight 'bold :foreground pastel-pink))
		      (mu4e-trashed-face (:strike-through t :foreground purple-alt-dimmed))
		      (mu4e-draft-face (:foreground pink-alt-dimmed))
		      (mu4e-flagged-face (:weight 'bold :foreground purple-alt))
		      (mu4e-replied-face (:weight 'normal :slant 'normal :foreground blue-alt))
		      (mu4e-forwarded-face (:weight 'normal :slant 'normal :foreground blue-alt-dimmed))
		      
		      (mu4e-header-face (:foreground pastel-violet))
		      (mu4e-header-title-face (:foreground pastel-lilac))
		      (mu4e-header-highlight-face (:extend t :inherit 'highlight))
		      (mu4e-header-marks-face (:inherit 'font-lock-preprocessor-face))
		      (mu4e-header-key-face (:weight 'bold :foreground blue))
		      (mu4e-header-value-face (:foreground blue-alt))
		      (mu4e-special-header-value-face (:foreground blue-alt))
		      
		      (mu4e-related-face (:slant 'italic :inherit 'default))
		      		      
		      (mu4e-link-face (:inherit 'link))
		      (mu4e-contact-face (:inherit 'font-lock-variable-name-face))
		      (mu4e-highlight-face (:foreground pink-alt))
		      (mu4e-title-face (:weight 'bold :foreground purple-alt))
		     
		      (mu4e-url-number-face (:weight 'bold :inherit 'link))

		      ;;mu4e-column-faces
		      (mu4e-column-faces-thread-subject (:foreground purple-alt))
		      (mu4e-column-faces-to-from (:foreground blue))
		      (mu4e-column-faces-date (:foreground pastel-lilac))
		      (mu4e-column-faces-flags (:foreground warning))
		      (mu4e-column-faces-tags (:foreground standout))
		      (mu4e-column-faces-mailing-list (:foreground pastel-violet))
		      (mu4e-column-faces-maildir (:foreground purple))
		      (mu4e-column-faces-message-id (:foreground blue-alt ))
		      (mu4e-column-faces-attachments (:foreground standout))
		      (mu4e-column-faces-signature (:foreground pastel-blue :weight 'bold))
		      (mu4e-column-faces-thead-subject (:foreground pastel-pink :weight 'bold))
		      (mu4e-column-faces-user-agent (:foreground blue-alt))

		      ;;gnus
		      (gnus-header-from (:foreground blue-alt))
		      (gnus-header-subject (:foreground blue-alt))
		      (gnus-header-name (:foreground purple-alt))
		      (gnus-header-content (:slant 'italic :foreground blue))

		      ;;message
		      (message-separator (:weight 'bold :foreground comment))
		      (message-header-to (:weight 'bold :foreground blue))
		      (message-header-cc (:weight 'bold :foreground blue-alt))
		      (message-header-subject (:foreground pink-alt))
		      (message-header-other (:foreground blue-alt))
		      (message-header-name (:foreground purple-alt))

		      ;;elfeed
		      (elfeed-search-date-face (:foreground pastel-lilac))
		      (elfeed-search-title-face (:foreground pastel-violet :weight 'normal))
		      (elfeed-search-unread-title-face (:weight 'normal :foreground pastel-pink))
		      (elfeed-search-feed-face (:foreground blue))
		      (elfeed-search-tag-face (:foreground pastel-blue))
		      (elfeed-search-last-update-face nil)
		      (elfeed-search-unread-count-face (:inherit 'default))
		      (elfeed-search-filter-face (:foreground purple))

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
