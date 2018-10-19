(deftheme xcode-dark
  "xcode-dark")

(custom-theme-set-faces
 'xcode-dark

 '(default ((t (:background "#000000" :foreground "#e0e0e0"))))
 '(mouse ((t (:foreground "#000000"))))
 '(cursor ((t (:background "#ff0000"))))
 '(border ((t (:foreground "#0000ff"))))
 '(fringe ((t (:background "#121212"))))
 '(mode-line ((t (:foreground "#e0e0e0" :background "#292929" ))))
 '(mode-line-buffer-id ((t (:bold nil :foreground "#e0e0e0"))))
 '(region ((t (:background "#114488" :foreground "#e0e0e0"))))

 '(font-lock-builtin-face ((t (:foreground "#4c99eb"))))
 '(font-lock-comment-face ((t (:foreground "#ff6805"))))
 '(font-lock-constant-face ((t (:foreground "#d315c3"))))
 '(font-lock-function-name-face ((t (:foreground "#ebd900"))))
 '(font-lock-keyword-face ((t (:foreground "#00ff15"))))
 '(font-lock-string-face ((t (:foreground "#00ffc0"))))
 '(font-lock-type-face ((t (:foreground "#ff47f3"))))
 '(font-lock-variable-name-face ((t (:foreground "#1492ff"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#e0e0e0" :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858" :underline nil))))

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

(provide-theme 'xcode-dark)
