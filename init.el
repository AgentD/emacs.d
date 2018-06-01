(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
	(evil yasnippet visual-fill-column undo-tree s popup memoize markdown-mode magit haskell-mode goto-chg flycheck flx fill-column-indicator)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((t (:foreground "#75507b")))))

(add-to-list 'load-path "~/.emacs.d/elisp")

;; custom color-theme
(add-to-list 'custom-theme-load-path (file-name-as-directory
									  "~/.emacs.d/themes"))
(load-theme 'gl-dark-alt t)
(enable-theme 'gl-dark-alt)
;;(load-theme 'xcode-dark t)
;;(enable-theme 'xcode-dark)

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
(load-library "custom-evil-mode")
(load-library "custom-linum")
(load-library "fci-mode")
(load-library "theme-switch")
;; manage backups/autosaves
(load-library "backup-autosave")
