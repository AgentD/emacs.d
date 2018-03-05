(deftheme gl-dark
  "gl-dark theme")

(custom-theme-set-faces
 'gl-dark
 
 '(default ((t (:background "black" :foreground "#ffffff"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "magenta"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
 '(mode-line-buffer-id ((t (:foreground "#a1c659":background nil))))
 '(region ((t (:background "#114488" :foreground "#ffffff"))))
 '(font-lock-builtin-face ((t (:foreground "#6fb3d2"))))
 '(font-lock-comment-face ((t (:foreground "#76c7b7"))))
 ;;'(font-lock-constant-face ((t (:foreground "#d315c3"))))
 '(font-lock-function-name-face ((t (:foreground "cyan"))))
 '(font-lock-keyword-face ((t (:foreground "#fb0120"))))
 '(font-lock-string-face ((t (:foreground "#d381c3"))))
 '(font-lock-type-face ((t (:foreground "#a1c659"))))
 '(font-lock-variable-name-face ((t (:foreground "#fda331"))))
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

(provide-theme 'gl-dark)

