(deftheme default-light
  "default-light theme")

(custom-theme-set-faces
 'default-light

 '(default ((t (:background "white" :foreground "black"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ff0000"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#f2f2f2"))))
 '(mode-line ((t (:foreground "black" :background "#bfbfbf" ))))
 ;;'(mode-line-buffer-id ((t (:bold nil :foreground "#e0e0e0"))))
 '(region ((t (:background "#eedc82" :foreground "black"))))

 '(font-lock-builtin-face ((t (:foreground "#483d8b"))))
 '(font-lock-comment-face ((t (:foreground "#b22222"))))
 '(font-lock-constant-face ((t (:foreground "#008b8b"))))
 '(font-lock-function-name-face ((t (:foreground "#0000ff"))))
 '(font-lock-keyword-face ((t (:foreground "#a020f0"))))
 '(font-lock-string-face ((t (:foreground "#8b2252"))))
 '(font-lock-type-face ((t (:foreground "#228b22"))))
 '(font-lock-variable-name-face ((t (:foreground "#a0522d"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#0000cd" :bold t))))
 '(linum ((t (:foreground "#222222" :underline nil))))
 '(line-number ((t (:foreground "#222222"  :underline nil))))

 '(ido-subdir ((t (:foreground "#ff0000"))))
 '(ido-first-match ((t (:foreground "black" :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#228b22"))))
 '(ido-indicator ((t (:foreground "black"))))
 '(ido-incomplete-regexp ((t (:foreground "black"))))

 '(diff-added ((t (:foreground "green"))))
 '(diff-removed ((t (:foreground "red"))))
 '(diff-header ((t (nil))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'default-light)
