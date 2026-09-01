;;; honeypie-theme.el --- Warm amber CRT-inspired Emacs theme -*- lexical-binding: t; -*-

;; Author: vmargb
;; Version: 0.1.0
;; Package-Requires: ((emacs "27.1"))
;; Keywords: faces, themes, colors, terminals
;; URL: https://github.com/vmargb/honeypie

;;; Commentary:
;; Honeypie is a light-first Emacs theme inspired by warm amber CRT displays.
;; It uses a natural progression from warm ivory through parchment, honey, amber,
;; copper and deep brown.

;;; Code:

(deftheme honeypie
  "Warm, light-first amber CRT-inspired theme."
  :background-mode 'light
  :kind 'color-scheme
  :family 'honeypie)

;; color palette
(let* ((class '((class color) (min-colors 89)))
       ;; surfaces
       (bg-0      "#FFF8E7")
       (bg-1      "#F8EBCB")
       (bg-2      "#F2D98B")
       (bg-3      "#EAD09A")

       ;; foreground hierarchy
       (fg-0      "#302014")
       (fg-1      "#5C3A1E")
       (fg-2      "#7B5B3B")
       (fg-3      "#A88A68")

       ;; amber levels
       (amber-1   "#F4D779")
       (amber-2   "#E7BB55")
       (amber-3   "#C98A24")
       (amber-4   "#A9651A")

       ;; supporting warm tones
       (copper-1  "#A95D2A")
       (copper-2  "#784515")
       (brown-1   "#4A2B14")
       (brown-2   "#27180C")

       ;; semantic colours
       (red       "#B64A32")
       (orange    "#C66B28")
       (yellow    "#B58A1E")
       (green     "#5D7A45")
       (teal      "#4E7770")
       (blue      "#5A6F89")
       (purple    "#765F7A"))

  )

;;;###autoload
(provide-theme 'honeypie)

;;; honeypie-theme.el ends here
