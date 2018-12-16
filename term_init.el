(custom-set-variables
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode nil)
 '(display-time-mode nil)
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(menu-bar-mode nil)
 '(tooltip-mode nil)
 '(global-font-lock-mode t))
(custom-set-faces
 '(minibuffer-prompt ((t (:inherit foreground))))
 '(mode-line-buffer-id ((t (:inherit background))))
 '(trailing-whitespace ((t (:background "#ffb6b0"))))
 '(mode-line ((t (:inherit background :inverse-video t))))
 )
(add-to-list 'load-path "~/.emacs.d/elisp")
;;(setq frame-title-format '("" "emacs@" system-name " - %b"))

(load-library "custom-editing")
(load-library "custom-dired-mode")
(load-library "custom-keys")
;; manage backups/autosaves
(load-library "backup-autosave")
