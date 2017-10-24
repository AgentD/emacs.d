(deftheme cobalt
  "cobalt theme")

(custom-theme-set-faces
 'cobalt
 
 '(default ((t (:background "#001b33" :foreground "white"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "white"))))
 '(border ((t (:foreground "#203f6a"))))
 '(fringe ((t (:background "#000d1a"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
 '(region ((t (:background "#423c38"))))
 '(font-lock-builtin-face ((t (:foreground "#ef851f"))))
 '(font-lock-comment-face ((t (:foreground "#0080fa"))))
 ;;'(font-lock-constant-face ((t (:foreground "#d318c3"))))
 '(font-lock-function-name-face ((t (:foreground "#cccccc"))))
 '(font-lock-keyword-face ((t (:foreground "#ff9d00"))))
 '(font-lock-string-face ((t (:foreground "#03d100"))))
 '(font-lock-type-face ((t (:foreground "#80ffbb"))))
 '(font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
 '(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))
 '(linum ((t (:foreground "#0080fa" :underline nil))))

 '(ido-subdir ((t (:foreground "#0080fa")))) 
 '(ido-first-match ((t (:foreground "#ffffff" :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#ffcc33")))) 
 '(ido-indicator ((t (:foreground "#ffffff")))) 
 '(ido-incomplete-regexp ((t (:foreground "#ffffff")))) 
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'cobalt)

