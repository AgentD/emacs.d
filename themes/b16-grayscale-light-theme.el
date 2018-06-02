(deftheme b16-grayscale-light
  "b16-grayscale-light")

(custom-theme-set-faces
 'b16-grayscale-light

 '(default ((t (:background "#f7f7f7" :foreground "#464646"))))
 '(mouse ((t (:foreground "black"))))
 '(cursor ((t (:background "#ff00ff"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#e3e3e3"))))
 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
 '(mode-line-buffer-id ((t (:bold nil :foreground "#ffffff"))))
 '(region ((t (:background "#114488" :foreground "#ffffff"))))

 '(font-lock-builtin-face ((t (:foreground "#868686"))))
 '(font-lock-comment-face ((t (:foreground "#ababab"))))
 '(font-lock-constant-face ((t (:foreground "#999999"))))
 '(font-lock-function-name-face ((t (:foreground "#686868"))))
 '(font-lock-keyword-face ((t (:foreground "#747474"))))
 '(font-lock-string-face ((t (:foreground "#8e8e8e"))))
 '(font-lock-type-face ((t (:foreground "#a0a0a0"))))
 '(font-lock-variable-name-face ((t (:foreground "#7c7c7c"))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:foreground "#000000" :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(trailing-whitespace ((t (:foreground "#d8d8d8" :background "#fb0120"))))

 '(ido-subdir ((t (:foreground "#ff0000" :bold))))
 '(ido-first-match ((t (:foreground "#000000" :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#ffcc33"))))
 '(ido-indicator ((t (:foreground "#000000"))))
 '(ido-incomplete-regexp ((t (:foreground "#ffffff"))))

 '(diff-added ((t (:foreground "green"))))
 '(diff-removed ((t (:foreground "red"))))
 '(diff-header ((t (nil))))
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'b16-grayscale-light)
