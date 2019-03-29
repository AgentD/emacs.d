(deftheme default-inverted
  "default-inverted theme")

(custom-theme-set-faces
 'default-inverted

 '(default ((t (:background "black" :foreground "#e0e0e0"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ff0000"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#0d0d0d"))))
 '(mode-line ((t (:foreground "#e0e0e0" :background "#404040" ))))
 ;;'(mode-line-buffer-id ((t (:bold nil :foreground "#e0e0e0"))))
 '(region ((t (:background "#11237d" :foreground "#e0e0e0"))))

 '(font-lock-builtin-face ((t (:foreground "#b7c274"))))
 '(font-lock-comment-face ((t (:foreground "#4ddddd"))))
 '(font-lock-constant-face ((t (:foreground "#ff7474"))))
 '(font-lock-function-name-face ((t (:foreground "#ffff00"))))
 '(font-lock-keyword-face ((t (:foreground "#5fdf0f"))))
 '(font-lock-string-face ((t (:foreground "#74ddad"))))
 '(font-lock-type-face ((t (:foreground "#dd74dd"))))
 '(font-lock-variable-name-face ((t (:foreground "#5fadd2"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#e0e0e0" :bold t))))
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

(provide-theme 'default-inverted)
