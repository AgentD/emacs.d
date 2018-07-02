(deftheme subl-dark
  "subl-dark theme")

(custom-theme-set-faces
 'subl-dark

 '(default ((t (:background "black" :foreground "#ffffff"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ff0000"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
 '(mode-line-buffer-id ((t (:bold nil :foreground "#ffffff"))))
 '(region ((t (:background "#114488" :foreground "#ffffff"))))

 '(font-lock-builtin-face ((t (:foreground "#f92627"))))
 '(font-lock-comment-face ((t (:foreground "#17f018"))))
 '(font-lock-constant-face ((t (:foreground "#ae81ff"))))
 '(font-lock-function-name-face ((t (:foreground "#a6e22e"))))
 '(font-lock-keyword-face ((t (:foreground "#f92627"))))
 '(font-lock-string-face ((t (:foreground "#e6db74"))))
 '(font-lock-type-face ((t (:foreground "#66d9ef"))))
 '(font-lock-variable-name-face ((t (:foreground "#fd971f"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858" :underline nil))))

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

(provide-theme 'subl-dark)
