(deftheme solarized-dark
  "solarized-dark theme")

(custom-theme-set-faces
 'solarized-dark

 ;; '(default ((t (:background "black" :foreground "#e0e0e0"))))
 '(default ((t (:background "#002b36" :foreground "#839496"))))
 '(mouse ((t (:inherit background))))
 '(cursor ((t (:background "#00aa00" :foreground "#002b36"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#073642" :foreground "#586e75"))))
 '(mode-line ((t ( :background "#073642" :forground "#839496"))))
 '(mode-line-inactive ((t ( :background "#002B36" :forground "#839496"
										:box (:line-width 1 :color "#073642"
														  :style unspecified)))))
 ;;'(mode-line-buffer-id ((t (:bold nil :foreground "#e0e0e0"))))
 '(region ((t (:background "#93a1a1" :foreground "#002b36"))))
 '(dired-directory ((t (:foreground "#2aa198"))))

 '(font-lock-builtin-face ((t (:foreground "#839496"))))
 '(font-lock-comment-face ((t (:foreground "#586e75"))))
;; '(font-lock-comment-face ((t (:foreground "#cc0000"))))
 '(font-lock-constant-face ((t (:foreground "#268bd2"))))
 '(font-lock-function-name-face ((t (:foreground "#268bd2"))))
 '(font-lock-keyword-face ((t (:foreground "#859900"))))
 '(font-lock-string-face ((t (:foreground "#2aa198"))))
 '(font-lock-type-face ((t (:foreground "#b58900"))))
 '(font-lock-variable-name-face ((t (:foreground "#268bd2"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:inherit foreground :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858"  :underline nil))))

 '(ido-subdir ((t (:foreground "#a1c659"))))
 '(ido-first-match ((t (:inherit foreground :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#ffcc33"))))
 '(ido-indicator ((t (:inherit foreground))))
 '(ido-incomplete-regexp ((t (:inherit foreground))))

 '(diff-added ((t (:foreground "green"))))
 '(diff-removed ((t (:foreground "red"))))
 '(diff-header ((t (nil))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'solarized-dark)
