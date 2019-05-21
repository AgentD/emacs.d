(deftheme b16-grayscale-dark
  "b16-grayscale-dark")

(custom-theme-set-faces
 'b16-grayscale-dark

 ;; '(default ((t (:background "#101010" :foreground "#b9b9b9"))))
 '(default ((t (:background "#000000" :foreground "#b9b9b9"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ffffff"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#151515"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#b9b9b9" ))))
;; '(mode-line-buffer-id ((t (:bold nil :foreground "#ffffff"))))
 '(region ((t (:background "#114488" :foreground "#ffffff"))))

 '(font-lock-builtin-face ((t (:foreground "#7c7c7c"))))
 '(font-lock-comment-face ((t (:foreground "#525252"))))
 '(font-lock-constant-face ((t (:foreground "#999999"))))
 '(font-lock-function-name-face ((t (:foreground "#686868"))))
 '(font-lock-keyword-face ((t (:foreground "#747474"))))
 '(font-lock-string-face ((t (:foreground "#8e8e8e"))))
 '(font-lock-type-face ((t (:foreground "#a0a0a0"))))
 '(font-lock-variable-name-face ((t (:foreground "#7c7c7c"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#ffffff" :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858" :underline nil))))

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

(provide-theme 'b16-grayscale-dark)
