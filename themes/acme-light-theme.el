(deftheme acme-light
	"acme-light theme")

(custom-theme-set-faces
 'acme-light

 '(default ((t (:background "#FFFFEA" :foreground "#000000"))))
 '(mouse ((t (:inherit background))))
 '(cursor ((t (:background "#00aa00"))))
 '(border ((t (:foreground "blue"))))
 '(fringe ((t (:background "#F1EED4"))))
 '(mode-line ((t (:foreground "#000000" :background "#EAFFFF"
							  :box (:line-width 1 :color "#073642"
												:style unspecified)))))
 '(mode-line-inactive ((t (:foreground "#000000" :background "#EAFFFF"))))
 '(region ((t (:foreground "#000000" :background "#EEEE9E"))))

 '(font-lock-builtin-face ((t (:foreground "#004488"))))
 '(font-lock-comment-face ((t (:foreground "#663311"))))
 '(font-lock-constant-face ((t (:bold t))))
 '(font-lock-function-name-face ((t (:foreground "#005500" :bold t))))
 '(font-lock-keyword-face ((t (:bold t))))
 '(font-lock-string-face ((t (:foreground "#005500"))))
 '(font-lock-type-face ((t (:foreground "#004488"))))
 '(font-lock-variable-name-face ((t (:bold t))))
 '(font-lock-warning-face ((t (:foreground "Red" :bold t))))

 '(minibuffer-prompt ((t (:inherit foreground :bold t))))
 '(linum ((t (:foreground "#585858" :underline nil))))
 '(line-number ((t (:foreground "#585858"  :underline nil))))

 '(ido-subdir ((t (:foreground "#004488"))))
 '(ido-first-match ((t (:inherit foreground :bold t :underline t))))
 '(ido-only-match ((t (:foreground "#005500"))))
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

(provide-theme 'acme-light)
