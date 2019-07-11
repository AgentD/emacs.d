(custom-set-variables
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode nil)
 '(display-battery-mode nil)
 '(display-time-mode nil)
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(menu-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 '(minibuffer-prompt ((t (:inherit foreground))))
 '(region ((t (:foreground "#e0e0e0" :background "blue"))))
 '(mode-line-buffer-id ((t (:inherit background))))
 '(trailing-whitespace ((t (:background "#ffb6b0")))))

(setq vc-follow-symlinks t)
;;(global-font-lock-mode 0)
(add-to-list 'load-path "~/.emacs.d/elisp")

(load-library "custom-editing")
(load-library "custom-ibuffer")
(load-library "custom-dired-mode")
(load-library "custom-keys")

;; manage backups/autosaves
(load-library "backup-autosave")
