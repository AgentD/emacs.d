(custom-set-variables
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(menu-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 '(minibuffer-prompt ((t (:inherit foreground))))
 '(dired-directory ((t (:foreground "#75507b"))))
;; '(default ((t (:family "Monospace" :foundry "xft" :slant normal :weight
 ;; normal :height 69 :width normal))))
 )
(when (display-graphic-p)
    (progn
	(custom-set-faces
		 '(mode-line ((t (:foreground "#ffffff" :background "#292929" ))))
		 '(mode-line-buffer-id ((t (:bold nil :foreground "#ffffff"))))))
	(require 'package)
	(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
	(package-initialize)
	)

(add-to-list 'load-path "~/.emacs.d/elisp")

;; custom color-theme
;;(add-to-list 'custom-theme-load-path (file-name-as-directory "~/.emacs.d/themes"))
;;(load-theme 'gl-term-alt t)
;;(enable-theme 'gl-term-alt)
;;(global-font-lock-mode 0)

;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(package-initialize)

(load-library "custom-editing")
(load-library "custom-keys")
;; manage backups/autosaves
(load-library "backup-autosave")

