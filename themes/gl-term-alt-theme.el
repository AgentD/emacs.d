(deftheme gl-term-alt
  "gl-term-alt theme")

(custom-theme-set-faces
 'gl-term-alt
 
 '(default ((t (:background "black" :foreground "#ffffff"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#114488"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(mode-line ((t (:foreground "#000000" :background "#bcbcbc" ))))
 '(mode-line-buffer-id ((t (:foreground "#000000":background nil))))
 '(menu ((t (:background "#bcbcbc" :foreground "black"))))
 '(region ((t (:background "#114488" :foreground "#ffffff"))))
 '(font-lock-builtin-face ((t (:foreground "#75507b"))))
 '(font-lock-comment-face ((t (:foreground "#cc0000"))))
 '(font-lock-constant-face ((t (:foreground "#d315c3"))))
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

(provide-theme 'gl-term-alt)
