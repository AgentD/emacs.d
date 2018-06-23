(deftheme b16-bright
  "b16-bright")

(custom-theme-set-faces
 'b16-bright

 '(default ((t (:background "black" :foreground "#ffffff"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ff0000"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
 '(mode-line-buffer-id ((t (:bold nil :foreground "#ffffff"))))
 '(region ((t (:background "#114488" :foreground "#ffffff"))))

 '(font-lock-builtin-face ((t (:foreground "#76c7b7"))))
 '(font-lock-comment-face ((t (:foreground "#b0b0b0"))))
 '(font-lock-constant-face ((t (:foreground "#fc6d24"))))
 '(font-lock-function-name-face ((t (:foreground "#6fb3d2"))))
 '(font-lock-keyword-face ((t (:foreground "#d381c3"))))
 '(font-lock-string-face ((t (:foreground "#a1c659"))))
 '(font-lock-type-face ((t (:foreground "#fda331"))))
 '(font-lock-variable-name-face ((t (:foreground "#fb0120"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

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

(provide-theme 'b16-bright)
