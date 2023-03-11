;;; TransSide-light-theme.el --- High contrast theme based off of the trans flag colors -*- lexical-binding: t -*-
;;
;; Authors: Kaushik Skye Harith
;;
;; Copyright 2022-2023 Kaushik S Harith
;;
;; Maintainer: Kaushik Harith <kaushik.harith@gmail.com>
;;
;; URL: https://github.com/Harith163/TransSide-theme
;; Version: 0.9.0
;; Package-Requires: ((autothemer "0.2.14") (emacs "24.1"))
;;
;;; License:
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; SEE README

;;; Code:

(require 'TransSide)

(TransSide-deftheme TransSide-light "Custom theme inspired by the colors of the Trans Flag."
 
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF))
		       ((class color) (min-colors #xFF)))
		      
		      ;; Specify the color palette for each of the classes above.
		      ;;basic bg/fg colors
		      (bg-main "#f1ebff" "#FeF")
		      (bg-black "#d0d0f0" "#ddf")
		      (fg-white "#000000" "#000")
		      (fg-text "#1f001f" "#202")

		      ;;Pinks & Blues
		      (pink "#911862" "#916")
		      (blue "#009cf0" "#09f")

		      (pink-alt "#800037" "#803")
		      (blue-alt "#0068ad" "#06a")

		      (pink-alt-dimmed "#922052" "#925")
		      (blue-alt-dimmed "#22588c" "#258")

		      ;;Purples & Violets
		      (purple "#816ec4" "#86c")
		      (purple-alt "#504099" "#549")

		      (purple-dimmed "#b59ce3" "#b9e")
		      (purple-alt-dimmed "#8c7ec4" "#87c")

		      ;;Alternate Palate
		      (pastel-blue "#001852" "#015")
		      (pastel-aqua "#142e6b" "#126")
		      (pastel-pink "#5a1144" "#514")
		      (pastel-lilac "#401f60" "#416")
		      (pastel-violet "#492e85" "#428")


		      ;;Alt grays and dark's
		      (gray "#080808" "#000")
		      (gray-dark "#2e2e2e" "#222")
		      (gray-alt "#c4c4c4  " "#ccc")
		      (gray-alt-dark "#ebebeb" "#eee")

		      ;;Level Colors
		      ;; (level1 "#FF619D")
		      ;; (level2 "#00ccFF")
		      ;; (level3 "#8368D5")
		      ;; (level4 "#35a7f5")
		      ;; (level5 "#FF91BA")
		      ;; (level6 "#21CFFC")
		      ;; (level7 "#6B53AE")
		      ;; (level8 "#2C93fE")

		      (level1 "#330066" "#306")
		      (level2 "#00228a" "#028")
		      (level3 "#330075" "#307")
		      (level4 "#00127f" "#017")
		      (level5 "#3b007f" "#307")
		      (level6 "#000066" "#006")
		      (level7 "#540099" "#509")
		      (level8 "#110066" "#106")

 		      (standout "#00FF94" "#0F9")
		      ;; (standout "#00AAA6")
				      
		      ;;Warning, comment, and other miscellanious colors
		      (builtin "#814181" "#848")
		      (comment "#6c526f" "#656")
		      (warning "#ff0069" "#F06")
		      (docstr "#370750" "#305")
		      (highlight "#efcfef" "#ece")

		      (background-standout1 "#37FF00" "#3F0")
		      (background-standout2 "#006AFF" "#06F")

              (org-src-blk "#dfcfff" "#dcf")
		      
		      )
		 	 )

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'TransSide-light)

;; Local Variables:
;; eval: (progn (rainbow-mode))
;; End:
