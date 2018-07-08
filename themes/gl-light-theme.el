(deftheme gl-light
  "gl-light theme")

(custom-theme-set-faces
 'gl-light

 '(default ((t (:background "#ffffdd" :foreground "#000000"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#114488" :foreground "white"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#ffffaa"))))
 '(mode-line ((t (:foreground "#ffffdd" :background "#000000" ))))
 '(mode-line-buffer-id ((t (:bold nil :foreground "#ffffdd"))))
 '(region ((t (:background "#ff0000" :foreground "#000000"))))

 '(font-lock-builtin-face ((t (:foreground "#75507b"))))
 '(font-lock-comment-face ((t (:foreground "#cc0000"))))
 '(font-lock-constant-face ((t (:foreground "#4e9a06"))))
 '(font-lock-function-name-face ((t (:foreground "#75507b"))))
 '(font-lock-keyword-face ((t (:foreground "#729fcf"))))
 '(font-lock-string-face ((t (:foreground "#4e9a06"))))
 '(font-lock-type-face ((t (:foreground "#4e9a06"))))
 '(font-lock-variable-name-face ((t (:foreground "#c4a000"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#000000" :bold t))))
 '(linum ((t (:foreground "#000000" :underline nil))))
 '(line-number ((t (:foreground "#000000" :underline nil))))

 '(ido-subdir ((t (:foreground "#0080fa"))))
 '(ido-first-match ((t (:foreground "#000000" :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#ffcc33"))))
 '(ido-indicator ((t (:foreground "#000000"))))
 '(ido-incomplete-regexp ((t (:foreground "#000000"))))

 '(diff-added ((t (:foreground "green"))))
 '(diff-removed ((t (:foreground "red"))))
 '(diff-header ((t (nil))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gl-light)
