(deftheme dark-grey
  "dark-grey theme")

(custom-theme-set-faces
 'dark-grey

 '(default ((t (:background "#3F3F3F" :foreground "#DCDCCC"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ff00ff"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#DCDCCC" :background "#4F4F4F"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
 '(mode-line-buffer-id ((t (:bold nil :foreground "#ffffff"))))
 '(region ((t (:background "#00077a" :foreground "#ffffff"))))

 '(font-lock-builtin-face ((t (:foreground "#DCDCCC"))))
 '(font-lock-comment-face ((t (:foreground "#7F9F7F"))))
 '(font-lock-constant-face ((t (:foreground "#BFEBBF"))))
 '(font-lock-function-name-face ((t (:foreground "#93E0E3"))))
 '(font-lock-keyword-face ((t (:foreground "#F0DFAF"))))
 '(font-lock-string-face ((t (:foreground "#CC9393"))))
 '(font-lock-type-face ((t (:foreground "#7CB8BB"))))
 '(font-lock-variable-name-face ((t (:foreground "#DFAF8F"))))
 '(font-lock-warning-face ((t (:foreground "#D0BF8F" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858" :underline nil))))
 '(trailing-whitespace ((t (:foreground "#d8d8d8" :background "#fb0120"))))

 '(ido-subdir ((t (:foreground "#a1c659"))))
 '(ido-first-match ((t (:foreground "#ffffff" :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#ffcc33"))))
 '(ido-indicator ((t (:foreground "#ffffff"))))
 '(ido-incomplete-regexp ((t (:foreground "#ffffff"))))

 '(diff-added ((t (:foreground "green"))))
 '(diff-removed ((t (:foreground "red"))))
 '(diff-header ((t (nil))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dark-grey)
