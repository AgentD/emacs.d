(custom-set-variables
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(add-to-list 'load-path "~/.emacs.d/elisp")

;;(require 'package)
;;(package-initialize)
(add-to-list 'custom-theme-load-path (file-name-as-directory
									  "~/.emacs.d/themes"))
(load-theme 'dark t)
(enable-theme 'dark)

;; better find-file
(ido-mode t)
(setq ido-enable-flex-matching t)

(load-library "custom-editing")
(load-library "custom-keys")
;; manage backups/autosaves
(load-library "backup-autosave")
