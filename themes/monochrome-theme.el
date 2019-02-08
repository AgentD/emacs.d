(deftheme monochrome
  "monochrome theme")

(custom-theme-set-faces
 'monochrome

 '(default ((t (:background "#e5e3d6" :foreground "#222222"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#222222"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#d3d1c9"))))
 '(mode-line ((t (:foreground "#e4e1d9" :background "#222222" ))))
;; '(mode-line-buffer-id ((t (:bold nil :inherit foreground))))
 '(region ((t (:background "#222222" :foreground "#e4e1d6"))))

 '(font-lock-builtin-face ((t (:inherit foreground :bold t))))
 '(font-lock-comment-face ((t (:inherit foreground :italic t))))
 '(font-lock-constant-face ((t (:bold t :inherit foreground))))
 '(font-lock-function-name-face ((t (:inherit foreground :bold t))))
 '(font-lock-keyword-face ((t (:inherit foreground :bold t))))
 '(font-lock-string-face ((t (:inherit foreground))))
 '(font-lock-type-face ((t (:inherit foreground :bold t))))
 '(font-lock-variable-name-face ((t (:inherit foreground))))
 '(font-lock-warning-face ((t (:inherit foreground :bold t))))

 '(minibuffer-prompt ((t (:inherit foreground :bold t))))
 '(linum ((t (:inherit foreground :underline nil))))
 '(line-number ((t (:inherit foreground :underline nil))))

 '(ido-subdir ((t (:inherit foreground ))))
 '(ido-first-match ((t (:inherit foreground :bold t :underline t))))
 '(ido-only-match ((t (:inherit foreground))))
 '(ido-indicator ((t (:inherit foreground))))
 '(ido-incomplete-regexp ((t (:inherit foreground))))

 '(diff-added ((t (:inherit foreground :bold t))))
 '(diff-removed ((t (:inherit foreground :bolt t))))
 '(diff-header ((t (nil))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'monochrome)
