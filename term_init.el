(custom-set-variables
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(menu-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 '(trailing-whitespace ((t (:background "#ffb6b0"))))
 '(minibuffer-prompt ((t (:inherit foreground))))
 '(mode-line-buffer-id ((t (:inherit background))))
 '(dired-directory ((t (:foreground "#75507b"))))
;; '(default ((t (:family "Monospace" :foundry "xft" :slant normal :weight
 ;; normal :height 69 :width normal))))
 )
(add-to-list 'load-path "~/.emacs.d/elisp")

(load-library "custom-editing")
(load-library "custom-keys")
;; manage backups/autosaves
(load-library "backup-autosave")

