(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme trans-side-testing "Custom theme using the transflag colors."
 
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF)))
		      
		      ;; Specify the color palette for each of the classes above.
		      ;;basic bg/fg colors
		      (bg-black      "#0D0D0D")
		      (bg-dark       "#303030")
		      (bg-gray       "#c6c6c6")
		      (fg-white      "#FFFFFF")
		      (fg-dark       "#5e5e5e")
		      (fg-gray       "#919191")

		      ;;darksn
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
		      (blue2-light   "#93c9ff"))
		     
		     ;; specifications for Emacs faces.
		     ((default (:foreground fg-white :background bg-black)))
		     
		     ;; Forms after the face specifications are evaluated.
		     ;; (palette vars can be used, read below for details.)
		     (custom-theme-set-variables 'trans-side-testing
						 `(ansi-color-names-vector [,bg-black
									    ,bg-dark
									    ,bg-gray
									    ,fg-white
									    ,fg-dark
									    ,fg-gray
									    ,pink-dark
									    ,blue-dark
									    ,aqua-dark
									    ,purple-dark
									    ,magenta-dark
									    ,blue2-dark
									    ,pink-light
									    ,blue-light
									    ,aqua-light
									    ,purple-light
									    ,magenta-light
									    ,blue2-light])))


(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'trans-side-testing)
