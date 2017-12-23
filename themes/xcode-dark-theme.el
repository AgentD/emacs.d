(deftheme xcode-dark
  "xcode-dark")

(custom-theme-set-faces
 'xcode-dark
 
 '(default ((t (:background "black" :foreground "white"))))
 '(mouse ((t (:foreground "black"))))
 ;;'(cursor ((t (:background "white"))))
 '(cursor ((t (:background "magenta"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#121212"))))
 '(mode-line ((t (:foreground "#d8d8d8" :background "#292929" ))))
 '(region ((t (:background "#00077a"))))
 '(font-lock-builtin-face ((t (:foreground "#4c99eb"))))
 '(font-lock-comment-face ((t (:foreground "#ff6805"))))
 ;;'(font-lock-constant-face ((t (:foreground "#d315c3"))))
 '(font-lock-function-name-face ((t (:foreground "#ebd900"))))
 '(font-lock-keyword-face ((t (:foreground "#00ff15"))))
 '(font-lock-string-face ((t (:foreground "#00ffc0"))))
 '(font-lock-type-face ((t (:foreground "#ff47f3"))))
 '(font-lock-variable-name-face ((t (:foreground "#1492ff"))))
 '(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))
 ;;'(linum ((t (:foreground "#fda331" :background "#000000" :underline nil))))	
 '(linum ((t (:foreground "#b0b0b0" :background "#000000" :underline nil))))	

 '(ido-subdir ((t (:foreground "#d381c3")))) 
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

(provide-theme 'xcode-dark)

