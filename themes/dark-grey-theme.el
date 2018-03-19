(deftheme dark-grey
  "dark-grey theme")

(custom-theme-set-faces
 'dark-grey
 
 '(default ((t (:background "#3F3F3F" :foreground "#DCDCCC"))))
 '(mouse ((t (:foreground "black"))))
 ;;'(cursor ((t (:background "white"))))
 '(cursor ((t (:background "magenta"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#DCDCCC" :background "#4F4F4F"))))
 '(mode-line ((t (:foreground "#000000" :background "#aeaeae" ))))
 '(mode-line-buffer-id ((t (:family "Monospace" :slant normal :weight bold :height 85 :width normal :foreground "#000000"))))
 '(region ((t (:background "#00077a"))))
 '(font-lock-builtin-face ((t (:foreground "#DCDCCC"))))
 '(font-lock-comment-face ((t (:foreground "#7F9F7F"))))
  '(font-lock-constant-face ((t (:foreground "#BFEBBF"))))
 '(font-lock-function-name-face ((t (:foreground "#93E0E3"))))
 '(font-lock-keyword-face ((t (:foreground "#F0DFAF"))))
 '(font-lock-string-face ((t (:foreground "#CC9393"))))
 '(font-lock-type-face ((t (:foreground "#7CB8BB"))))
 '(font-lock-variable-name-face ((t (:foreground "#DFAF8F"))))
 '(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 '(font-lock-warning-face ((t (:foreground "#D0BF8F" :bold t))))
 ;; '(linum ((t (:foreground "#fda331" :background "#000000" :underline nil))))	
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

(provide-theme 'dark-grey)

