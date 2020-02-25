(autothemer-deftheme example-name "Custom theme using the transflag colors."
		     
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF)))
		      
		      ;; Specify the color palette for each of the classes above.
		      (bg-black "#0D0D0D")
		      (bg-dark "#303030")
		      (bg-gray "#c6c6c6")
		      (fg-white "#FFFFFF")
		      (fg-dark "#5e5e5e")
		      (fg-gray "#919191")
		      (pink-dark "#a43261")
		      (pink-light"#ff81b8")
		      (blue-dark "#006ca5")
		      (blue-light"#3bd6ff")
		      (aqua-dark "#007086")
		      (aqua-light "#00ddf4")
		      (purple-dark "#6751a6")
		      (purple-light "#a38cc5")
		      (magenta-dark "#913e88")
		      (magenta-light "#ffa7f6")
		      (blue2-dark "#0061b1")
		      (blue2-light "#93c9ff"))
		     
		     ;; specifications for Emacs faces.
		     
		     ;; Forms after the face specifications are evaluated.
		     ;; (palette vars can be used, read below for details.)
		     (custom-theme-set-variables 'example-name
						 `(ansi-color-names-vector [,bg-black
									    ,bg-dark
									    ,bg-gray
									    ,fg-white
									    ,fg-dark
									    ,fg-gray
									    ,pink-dark
									    ,pink-light
									    ,blue-dark
									    ,blue-light
									    ,aqua-dark
									    ,aqua-light
									    ,purple-dark
									    ,purple-light
									    ,magenta-dark
									    ,magenta-light
									    ,blue2-dark
									    ,blue2-light])))
