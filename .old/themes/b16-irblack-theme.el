(deftheme b16-irblack
  "b16-irblack")

(custom-theme-set-faces
 'b16-irblack

 '(default ((t (:background "black" :foreground "#e0e0e0"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ff0000"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(mode-line ((t (:foreground "#e0e0e0" :background "#292929" ))))
;; '(mode-line-buffer-id ((t (:bold nil :foreground "#e0e0e0"))))
 '(region ((t (:background "#114488" :foreground "#e0e0e0"))))

 '(font-lock-builtin-face ((t (:foreground "#c6c5fe"))))
 '(font-lock-comment-face ((t (:foreground "#6c6c66"))))
 '(font-lock-constant-face ((t (:foreground "#e9c062"))))
 '(font-lock-function-name-face ((t (:foreground "#96cbfe"))))
 '(font-lock-keyword-face ((t (:foreground "#ff73fd"))))
 '(font-lock-string-face ((t (:foreground "#a8ff60"))))
 '(font-lock-type-face ((t (:foreground "#ffffb6"))))
 '(font-lock-variable-name-face ((t (:foreground "#ff6c60"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#e0e0e0" :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858" :underline nil))))
 '(trailing-whitespace ((t (:foreground "#d8d8d8" :background "#fb0120"))))

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

(provide-theme 'b16-irblack)
