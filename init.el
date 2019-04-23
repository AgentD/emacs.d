(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(battery-mode-line-format "[%b%p%%] ")
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(cua-mode nil nil (cua-base))
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-default-load-average nil)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
	(fill-column-indicator yasnippet visual-fill-column undo-tree markdown-mode magit-popup magit haskell-mode flx diminish auctex)))
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
	;; ask y or n to kill emacs
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((t (:foreground "#75507b"))))
 '(trailing-whitespace ((t (:background "#ffb6b0")))))
 (setq use-dialog-box nil)

(setq frame-title-format '("" "emacs@" system-name " - %b"))
(setq visible-bell nil)
(setq vc-follow-symlinks t)

(add-to-list 'load-path "~/.emacs.d/elisp")

(add-to-list 'custom-theme-load-path (file-name-as-directory
				      "~/.emacs.d/themes"))
(load-theme 'gl-dark-alt t)
(enable-theme 'gl-dark-alt)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere t)
(setq ido-auto-merge-work-directories-length -1)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-global-mode 1)

(load-library "custom-buffer-mode")
(load-library "custom-terminal-mode")
(load-library "custom-eshell-mode")
(load-library "custom-editing")
(load-library "custom-dired-mode")
(load-library "custom-keys")
(load-library "custom-diminish-mode")
(load-library "custom-font-mode")

(load-library "theme-switch")
;; manage backups/autosaves
(load-library "backup-autosave")
