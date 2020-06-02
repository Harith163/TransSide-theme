(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme trans-side "Custom theme inspired by the colors of the Trans Flag."
 
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF)))
		      
		      ;; Specify the color palette for each of the classes above.
		      ;;basic bg/fg colors
		      (bg-main "#00000f")
		      (bg-black "#080808")
		      (bg-dark "#303030")
		      (bg-gray "#c6c6c6")
		      (fg-white "#FFFFFF")
		      (fg-dark "#5e5e5e")
		      (fg-gray "#919191")

		      ;;dark's
		      (pink-dark "#a43261")
		      (blue-dark "#006ca5")
		      (aqua-dark "#007086")
		      (purple-dark "#6751a6")
		      (magenta-dark "#913e88")
		      (blue2-dark "#0061b1")

		      ;;lights
		      (pink-light "#ff81b8")
		      (blue-light "#3bd6ff")
		      (aqua-light "#00ddf4")
		      (purple-light "#a38cc5")
		      (magenta-light "#ffa7f6")
		      (blue2-light "#93c9ff")

		      ;;light alt
		      (pink-light-alt "#e85e8a")
		      (aqua-light-alt "#00d3ff")

		      ;;Alt grays and dark's
		      (mygray1 "#f8f8f8")
		      (mygray1-dark "#d0d0d0")
		      (mygray2 "#3a3a3a")
		      (mygray2-dark "#141414")

		      ;;Level Colors
		      (level1 "#FF619D")
		      (level2 "#00ccFF")
		      (level3 "#8368D5")
		      (level4 "#00eeff")
		      (level5 "#F561FF")
		      (level6 "#00FCEE")
		      (level7 "#6B62E2")
		      (level8 "#00FF75")

		      ;;Alternate Palate
		      (pastel-blue "#7eb8da")
		      (pastel-aqua "#92ddea")
		      (pastel-pink "#ffa5d8")
		      (pastel-lilac "#be9ddf")
		      (pastel-violet "#9579d1")

		      (standout "#00FF94")
				      
		      ;;Warning, comment, and other miscellanious colors
		      (builtin "#8C73ED")
		      (comment "#37465f")
		      (warning "#ff0069")

		      (background-standout1 "#37FF00")
		      (background-standout2 "#006AFF"))
		     
		     ;; specifications for Emacs faces.
		     
		     (;; Default faces. Most commonly seen, used and inherited.
		      (default (:font "Inconsolata LGC Markup" :foreground fg-white :background bg-main :height 140))
		      (font-lock-builtin-face (:foreground builtin))
		      (font-lock-comment-face (:foreground comment))
		      (font-lock-doc-face (:foreground purple-dark))
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
		      (cursor (:background fg-gray))
		      (fringe (:background bg-main))
		      (highlight (:foreground standout :background mygray2-dark))
		      ;;(highlight (:foreground bg-black :background blue2-light))
		      (lazy-highlight (:background fg-gray))
		      (region (:foreground mygray2-dark :background mygray1))

		      ;;more basic things!!
		      (bold (:weight 'bold :foreground standout))
		      (warning (:weight 'bold :foreground warning))
		      (match (:background level7))

		      ;;line number mode
		      (linum (:height 0.85 :inherit '(shadow default)))
		      (linum-relative-current-face (:weight 'bold :foreground pastel-aqua :background mygray2 :inherit 'linum))
		      (line-number (:inherit ('shadow 'default)))
		      (line-number-current-line (:inherit 'line-number))

		      ;;Mode line 
		      (mode-line (:box (:line-width 1 :color nil :style 'released-button) :foreground aqua-light-alt :background bg-black))
		      (mode-line-inactive (:weight 'light :box (:line-width 1 :color nil :style 'pressed-button) :foreground aqua-light-alt :background bg-black :inherit 'mode-line))
		      (mode-line-highlight (:box nil :foreground aqua-light :weight 'bold))
		      (mode-line-emphasis (:weight 'bold :foreground mygray1))
		      (mode-line-buffer-id (:weight 'bold :bold t :foreground aqua-light-alt :background nil))

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
		      (org-link (:foreground pink-light :underline t))
		      (org-special-keyword (:foreground blue2-dark))
		      (org-quote (:inherit 'org-block :slant 'italic))
		      (org-verse (:inherit 'org-block :slant 'italic))
		      
		      (org-todo (:foreground magenta-light :bold t :box nil))
		      (org-done (:foreground blue-light :bold t :box nil))
		      
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

		      (org-block (:background "#040014"))
		      (org-block-begin-line (:inherit 'font-lock-comment-face :background "#140024"))
		      (org-block-end-line (:inherit 'org-block-begin-line))

		      

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
		      (outline-1 (:foreground level1))
		      (outline-2 (:foreground level2))
		      (outline-3 (:foreground level3))
		      (outline-4 (:foreground level4))
		      (outline-5 (:foreground level5))
		      (outline-6 (:foreground level6))
		      (outline-7 (:foreground level7))
		      (outline-8 (:foreground level8))

		      ;;latex faces
		      (font-latex-sectioning-0-face (:height 1.1 :inherit 'font-latex-sectioning-1-face))
		      (font-latex-sectioning-1-face (:height 1.1 :inherit 'font-latex-sectioning-2-face))
		      (font-latex-sectioning-2-face (:height 1.1 :inherit 'font-latex-sectioning-3-face))
		      (font-latex-sectioning-3-face (:height 1.1 :inherit 'font-latex-sectioning-4-face))
		      (font-latex-sectioning-4-face (:height 1.1 :inherit 'font-latex-sectioning-5-face))
		      (font-latex-sectioning-5-face (:weight 'bold :slant 'italic :foreground pastel-blue))

		      (font-latex-math-face (:foreground standout :weight 'semi-bold))

		      ;;Company
		      (company-tooltip (:foreground bg-main :background fg-white))
		      (company-tooltip-selection (:background pastel-pink))
		      (company-template-field (:foreground bg-main :background fg-white))
		      (company-tooltip-search (:inherit 'highlight))
		      (company-tooltip-search-selection (:inherit 'highlight))
		      (company-tooltip-mouse (:inherit 'highlight))
		      (company-echo-common (:foreground warning))
		      (company-tooltip-common (:foreground warning))
		      (company-tooltip-common-selection (:inherit 'company-tooltip-common))
		      (company-tooltip-annotation (:foreground bg-black))
		      (company-tooltip-annotation-selection (:inherit 'company-tooltip-annotation))
		      (company-scrollbar-fg (:background warning))
		      (company-scrollbar-bg (:background mygray1-dark))
		      (company-preview (:foreground mygray1-dark :background aqua-dark))
		      (company-preview-common (:foreground warning :inherit 'company-preview))
		      (company-preview-search (:background blue2-dark :inherit 'company-preview))
		      (company-echo nil)

		      ;;Magit
		      (magit-section-heading (:weight 'bold :foreground mygray1-dark))
		      (magit-section-heading-selection (:foreground pink-light-alt))
		      (magit-section-highlight (:background bg-dark))
		      (magit-section-secondary-heading (:weight 'bold))
		      (magit-blame-date nil)
		      (magit-blame-name nil)
		      (magit-blame-hash nil)
		      (magit-blame-summary nil)
		      (magit-blame-heading (:weight 'normal :slant 'normal :inherit 'magit-blame-highlight))
		      (magit-blame-dimmed (:weight 'normal :slant 'normal :inherit 'magit-dimmed))
		      (magit-blame-margin (:weight 'normal :slant 'normal :inherit 'magit-blame-highlight))
		      (magit-blame-highlight (:foreground fg-white :background mygray2))
		      (magit-reflog-other (:foreground level4))
		      (magit-reflog-remote (:foreground level4))
		      (magit-reflog-cherry-pick (:foreground level8))
		      (magit-reflog-rebase (:foreground level5))
		      (magit-reflog-reset (:foreground warning))
		      (magit-reflog-checkout (:foreground blue2-dark))
		      (magit-reflog-merge (:foreground level8))
		      (magit-reflog-amend (:foreground level5))
		      (magit-reflog-commit (:foreground level8))
		      (magit-bisect-bad (:foreground pink-dark))
		      (magit-bisect-skip (:foreground fg-gray))
		      (magit-bisect-good (:foreground fg-dark))
		      (magit-sequence-drop (:foreground pink-light-alt))
		      (magit-sequence-head (:foreground blue2-light))
		      (magit-sequence-part (:foreground mygray1-dark))
		      (magit-sequence-stop (:foreground bg-gray))
		      (magit-filename (:weight 'normal))
		      (magit-cherry-equivalent (:foreground level5))
		      (magit-cherry-unmatched (:foreground level4))
		      (magit-signature-error (:foreground pink-dark))
		      (magit-signature-revoked (:foreground pink-light-alt))
		      (magit-signature-expired-key (:inherit 'magit-signature-expired))
		      (magit-signature-expired (:foreground pastel-pink))
		      (magit-signature-untrusted (:foreground level4))
		      (magit-signature-bad (:weight 'bold :foreground warning))
		      (magit-signature-good (:foreground level8))
		      (magit-refname (:foreground mygray1-dark))
		      (magit-branch-upstream (:slant 'italic))
		      (magit-branch-local (:foreground blue2-light))
		      (magit-branch-remote (:foreground bg-gray))
		      (magit-tag (:foreground mygray1-dark))
		      (magit-hash (:foreground fg-dark))
		      (magit-dimmed (:foreground fg-gray))
		      (magit-log-date (:weight 'normal :slant 'normal :foreground mygray1-dark))
		      (magit-log-author (:weight 'normal :slant 'normal :foreground level1))
		      (magit-log-graph (:foreground mygray1-dark))
		      (magit-diffstat-removed (:foreground pink-dark))
		      (magit-diffstat-added (:foreground fg-dark))
		      (magit-diff-context-highlight (:foreground bg-gray :background bg-dark))
		      (magit-diff-base-highlight (:foreground mygray1 :background fg-dark))
		      (magit-diff-removed-highlight (:foreground mygray1-dark :background mygray2))
		      (magit-diff-added-highlight (:foreground mygray1-dark :background mygray2))
		      (magit-diff-context (:foreground bg-gray))
		      (magit-diff-base (:foreground fg-white :background fg-dark))
		      (magit-diff-removed (:foreground mygray1 :background mygray2))
		      (magit-diff-added (:foreground mygray1 :background mygray2))
		      (magit-diff-lines-heading (:foreground mygray1-dark :background pink-dark :inherit 'magit-diff-hunk-heading-highlight))
		      (magit-diff-hunk-heading-selection (:foreground pink-light-alt :inherit 'magit-diff-hunk-heading-highlight))
		      (magit-diff-hunk-heading-highlight (:foreground bg-gray :background fg-dark))
		      (magit-diff-hunk-heading (:foreground bg-gray :background mygray2))
		      (magit-diff-file-heading-selection (:foreground pink-light-alt :inherit 'magit-diff-file-heading-highlight))
		      (magit-diff-file-heading (:weight 'bold))
		      (magit-process-ng (:foreground warning :inherit 'magit-section-heading))
		      (magit-process-ok (:foreground level8 :inherit 'magit-section-heading))

		      ;;Avy and Ace-Window
		      (avy-background-face (:foreground fg-dark))
		      (avy-lead-face (:foreground bg-black :background background-standout1))
		      (avy-lead-face-0 (:foreground bg-black :background background-standout2))
		      (avy-lead-face-1 (:foreground bg-black :background pink-light))
		      
		      (aw-leading-char-face (:height 2.0 :inherit 'avy-lead-face))

		      ;;mu4e stuff
		      (mu4e-region-code (:background comment))
		      (mu4e-compose-header-face (:slant 'italic :inherit 'message-separator))
		      (mu4e-compose-separator-face (:slant 'italic :inherit 'message-separator))
		      (mu4e-warning-face (:weight 'bold :slant 'normal :inherit 'font-lock-warning-face))
		      (mu4e-ok-face (:weight 'bold :slant 'normal :inherit 'font-lock-comment-face))
		      (mu4e-system-face (:slant 'italic :inherit 'font-lock-comment-face))
		      (mu4e-cited-7-face (:weight 'normal :slant 'italic :inherit 'font-lock-type-face))
		      (mu4e-cited-6-face (:weight 'normal :slant 'italic :inherit 'font-lock-comment-delimiter-face))
		      (mu4e-cited-5-face (:weight 'normal :slant 'italic :inherit 'font-lock-comment-face))
		      (mu4e-cited-4-face (:weight 'normal :slant 'italic :inherit 'font-lock-keyword-face))
		      (mu4e-cited-3-face (:weight 'normal :slant 'italic :inherit 'font-lock-variable-name-face))
		      (mu4e-cited-2-face (:weight 'normal :slant 'italic :inherit 'font-lock-preprocessor-face))
		      (mu4e-cited-1-face (:weight 'normal :slant 'italic :inherit 'font-lock-builtin-face))
		      (mu4e-attach-number-face (:weight 'bold :inherit 'font-lock-variable-name-face))
		      (mu4e-url-number-face (:weight 'bold :inherit 'font-lock-constant-face))
		      (mu4e-footer-face (:inherit 'font-lock-comment-face))
		      (mu4e-view-body-face (:inherit 'default))
		      (mu4e-modeline-face (:weight 'bold :inherit 'font-lock-string-face))
		      (mu4e-context-face (:weight 'bold :inherit 'mu4e-title-face))
		      (mu4e-title-face (:weight 'bold :inherit 'font-lock-type-face))
		      (mu4e-highlight-face (:inherit 'highlight))
		      (mu4e-contact-face (:inherit 'font-lock-variable-name-face))
		      (mu4e-link-face (:inherit 'link))
		      (mu4e-special-header-value-face (:inherit 'font-lock-builtin-face))
		      (mu4e-header-value-face (:inherit 'font-lock-type-face))
		      (mu4e-header-key-face (:weight 'bold :inherit 'message-header-name))
		      (mu4e-header-marks-face (:inherit 'font-lock-preprocessor-face))
		      (mu4e-header-highlight-face (:weight 'bold :underline t :inherit 'hl-line))
		      (mu4e-header-title-face (:inherit 'font-lock-type-face))
		      (mu4e-header-face (:inherit 'default))
		      (mu4e-forwarded-face (:weight 'normal :inherit 'font-lock-builtin-face))
		      (mu4e-replied-face (:weight 'normal :inherit 'font-lock-builtin-face))
		      (mu4e-flagged-face (:weight 'bold :inherit 'font-lock-constant-face))
		      (mu4e-draft-face (:inherit 'font-lock-string-face))
		      (mu4e-trashed-face (:strike-through t :inherit 'font-lock-comment-face))
		      (mu4e-moved-face (:slant 'italic :inherit 'font-lock-comment-face))
		      (mu4e-unread-face (:weight 'bold :inherit 'font-lock-keyword-face))

		      ;;Ivy.
		      (ivy-match-required-face (:foreground warning :inherit 'minibuffer-prompt))
		      (ivy-confirm-face (:foreground pastel-lilac :inherit 'minibuffer-prompt))
		      (ivy-minibuffer-match-face-4 (:inherit 'ivy-minibuffer-match-face-2))
		      (ivy-minibuffer-match-face-3 (:inherit 'ivy-minibuffer-match-face-2))
		      (ivy-minibuffer-match-face-2 (:inherit 'ivy-minibuffer-match-face-1))
		      (ivy-minibuffer-match-face-1 (:weight 'bold :foreground standout))
		      (ivy-minibuffer-match-highlight (:inherit 'highlight))
		      (ivy-current-match (:inherit 'highlight))
		      (ivy-cursor (:inherit 'highlight))

		      ;;Swiper
		      (swiper-line-face (:inherit 'highlight))
		      (swiper-background-match-face-4 (:inherit 'swiper-match-face-4))
		      (swiper-background-match-face-3 (:inherit 'swiper-match-face-3))
		      (swiper-background-match-face-2 (:inherit 'swiper-match-face-2))
		      (swiper-background-match-face-1 (:inherit 'swiper-match-face-1))
		      (swiper-match-face-4 (:inherit 'isearch-fail))
		      (swiper-match-face-3 (:inherit 'match))
		      (swiper-match-face-2 (:inherit 'isearch))
		      (swiper-match-face-1 (:inherit 'lazy-highlight))

		      ;;Counsel.
		      (counsel-key-binding (:inherit 'font-lock-keyword-face))

		      )
		     ;; Forms after the face specifications are evaluated.
		     ;; (palette vars can be used, read below for details.)
		     )

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'trans-side)

;; Local Variables:
;; eval: (rainbow-mode)
;; End:
