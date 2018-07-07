(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(battery-mode-line-format "[%b%p%%] ")
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-default-load-average nil)
 '(display-time-mode t)
 '(global-yascroll-bar-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 ;; '(scroll-bar-mode (quote right))
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((t (:foreground "#75507b"))))
 '(scroll-bar ((t (:background "#454545" :distant-foreground "#454545" :foreground "#454545"))))
 '(trailing-whitespace ((t (:background "#ffb6b0")))))


(setq frame-title-format '("" "emacs@" system-name " - %b"))
;; display buffername in titlebar

(add-to-list 'load-path "~/.emacs.d/elisp")

;; custom color-theme
(add-to-list 'custom-theme-load-path (file-name-as-directory
									  "~/.emacs.d/themes"))
(load-theme 'gl-dark-alt t)
(enable-theme 'gl-dark-alt)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; better find-file
(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere t)
(add-hook 'doc-view-mode-hook 'auto-revert-mode) ;; doc view auto update

(load-library "snippets")
;;(load-library "emacs-goodies-el")
(load-library "custom-buffer-mode")
(load-library "custom-terminal-mode")
(load-library "custom-editing")
(load-library "custom-dired-mode")
(load-library "custom-keys")
(load-library "fci-mode")
(load-library "theme-switch")
;; manage backups/autosaves
(load-library "backup-autosave")
