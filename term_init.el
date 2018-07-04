(custom-set-variables
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(menu-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 '(trailing-whitespace ((t (:background "#ffb6b0"))))
 '(minibuffer-prompt ((t (:inherit foreground))))
 '(scroll-bar ((t (:background "#454545" :distant-foreground "#454545" :foreground "#454545"))))
 '(dired-directory ((t (:foreground "#75507b"))))
;; '(default ((t (:family "Monospace" :foundry "xft" :slant normal :weight
 ;; normal :height 69 :width normal))))
 )
(add-to-list 'load-path "~/.emacs.d/elisp")
(when (display-graphic-p)
    (progn
		(require 'package)
		(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
		(package-initialize)
		(setq frame-title-format '("" "emacs@" system-name " - %b"))
		(add-to-list 'custom-theme-load-path (file-name-as-directory
											  "~/.emacs.d/themes"))
		(load-theme 'memacs t)
		(enable-theme 'memacs)
		(load-library "custom-buffer-mode")
		(load-library "custom-terminal-mode")
		(load-library "custom-dired-mode"))
	)

(load-library "custom-editing")
(load-library "custom-keys")
;; manage backups/autosaves
(load-library "backup-autosave")

