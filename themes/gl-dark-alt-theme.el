(deftheme gl-dark-alt
  "gl-dark-alt theme")

(custom-theme-set-faces
 'gl-dark-alt
 
 '(default ((t (:background "black" :foreground "#ffffff"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "magenta"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(fringe ((t (:background "#000000"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
 '(mode-line-buffer-id ((t (:family "Monospace" :slant normal :weight bold :height 80 :width normal :foreground "#ffffff"))))
 '(region ((t (:background "#114488" :foreground "#ffffff"))))
 '(font-lock-builtin-face ((t (:foreground "#75507b"))))
 '(font-lock-comment-face ((t (:foreground "#cc0000"))))
 '(font-lock-constant-face ((t (:foreground "#4e9a06"))))
 '(font-lock-function-name-face ((t (:foreground "#75507b"))))
 '(font-lock-keyword-face ((t (:foreground "#729fcf"))))
 '(font-lock-string-face ((t (:foreground "#4e9a06"))))
 '(font-lock-type-face ((t (:foreground "#4e9a06"))))
 '(font-lock-variable-name-face ((t (:foreground "#c4a000"))))
 '(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))
 '(linum ((t (:foreground "#585858" :background "#000000" :underline nil))))	

 
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

(provide-theme 'gl-dark-alt)

