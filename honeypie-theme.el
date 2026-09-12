;;; honeypie-theme.el --- Warm amber CRT-inspired Emacs theme -*- lexical-binding: t; -*-

;; Author: vmargb
;; Version: 0.1.1
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

  (custom-theme-set-faces
   'honeypie

   ;; main UI
   `(default ((,class (:background ,bg-0 :foreground ,fg-0))))
   `(cursor ((,class (:background ,amber-4))))
   `(fringe ((,class (:background ,bg-1 :foreground ,fg-3))))
   `(vertical-border ((,class (:foreground ,fg-3))))
   `(header-line ((,class (:background ,bg-1 :foreground ,fg-1
                                        :box nil))))
   `(mode-line ((,class (:background ,bg-1 :foreground ,fg-0
                                     :box nil :weight bold))))
   `(mode-line-inactive ((,class (:background ,bg-1 :foreground ,fg-2
                                               :box nil))))

   ;; selection
   `(region ((,class (:background ,bg-2 :foreground ,brown-2))))
   `(highlight ((,class (:background ,bg-1))))
   `(hl-line ((,class (:background ,bg-1))))

   ;; Minibuffer / search
   `(minibuffer-prompt ((,class (:foreground ,amber-4 :weight bold))))
   `(isearch ((,class (:background ,amber-2 :foreground ,brown-2
                                   :weight bold))))
   `(lazy-highlight ((,class (:background ,bg-2 :foreground ,fg-0))))

   ;; font-lock
   `(font-lock-comment-face ((,class (:foreground ,fg-2 :slant italic))))
   `(font-lock-keyword-face ((,class (:foreground ,amber-4 :weight bold))))
   `(font-lock-function-name-face ((,class (:foreground ,copper-1 :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg-0))))
   `(font-lock-type-face ((,class (:foreground ,blue))))
   `(font-lock-constant-face ((,class (:foreground ,purple))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-builtin-face ((,class (:foreground ,teal))))
   `(font-lock-warning-face ((,class (:foreground ,orange :weight bold))))

   ;; diagnostics
   `(error ((,class (:foreground ,red :weight bold))))
   `(warning ((,class (:foreground ,orange :weight bold))))
   `(success ((,class (:foreground ,green :weight bold))))

   ;; links and buttons
   `(link ((,class (:foreground ,teal :underline t))))
   `(button ((,class (:foreground ,teal :underline t))))

   ;; generic emphasis
   `(bold ((,class (:weight bold))))
   `(italic ((,class (:slant italic))))))

;;;###autoload
(provide-theme 'honeypie)

;;; honeypie-theme.el ends here
