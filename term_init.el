(custom-set-variables
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(menu-bar-mode t)
 '(tooltip-mode nil))

(add-to-list 'load-path "~/.emacs.d/elisp")

;; custom color-theme
(add-to-list 'custom-theme-load-path (file-name-as-directory "~/.emacs.d/themes"))
(load-theme 'gl-term t)
(enable-theme 'gl-term)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(load-library "custom-buffer-mode")
(load-library "custom-editing")
(load-library "custom-keys")
;; manage backups/autosaves
(load-library "backup-autosave")

