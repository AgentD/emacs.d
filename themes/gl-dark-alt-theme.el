(deftheme gl-dark-alt
  "gl-dark-alt theme")

(custom-theme-set-faces
 'gl-dark-alt

 ;; '(default ((t (:background "black" :foreground "#e0e0e0"))))
 '(default ((t (:background "black"))))
 '(mouse ((t (:inherit background))))
 '(cursor ((t (:background "#ff0000"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(mode-line ((t (:inherit foreground :background "#292929" ))))
 ;;'(mode-line-buffer-id ((t (:bold nil :foreground "#e0e0e0"))))
 '(region ((t (:background "#114488" :foreground "#e0e0e0"))))

 '(font-lock-builtin-face ((t (:foreground "#75507b"))))
 '(font-lock-comment-face ((t (:foreground "#cc0000"))))
 '(font-lock-constant-face ((t (:foreground "#4e9a06"))))
 '(font-lock-function-name-face ((t (:foreground "#75507b"))))
 '(font-lock-keyword-face ((t (:foreground "#729fcf"))))
 '(font-lock-string-face ((t (:foreground "#4e9a06"))))
 '(font-lock-type-face ((t (:foreground "#4e9a06"))))
 '(font-lock-variable-name-face ((t (:foreground "#c4a000"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:inherit foreground :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858"  :underline nil))))

 '(ido-subdir ((t (:foreground "#a1c659"))))
 '(ido-first-match ((t (:foreground "#e0e0e0" :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#ffcc33"))))
 '(ido-indicator ((t (:foreground "#e0e0e0"))))
 '(ido-incomplete-regexp ((t (:foreground "#e0e0e0"))))

 '(diff-added ((t (:foreground "green"))))
 '(diff-removed ((t (:foreground "red"))))
 '(diff-header ((t (nil))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gl-dark-alt)
