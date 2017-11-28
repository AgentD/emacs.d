(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (yasnippet flx-ido markdown-mode auto-complete-auctex jdee haskell-mode fill-column-indicator auto-complete auctex)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 90 :width normal)))))

(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)


;; custom color-theme
(add-to-list 'custom-theme-load-path
			              (file-name-as-directory "~/.emacs.d/themes"))
;;(load-theme 'gl-dark t)
(load-theme 'xcode-dark t)
;;(enable-theme 'gl-dark)
(enable-theme 'xcode-dark)

;; better find-file
(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere t)

;; custom evil mode
;;(load-library "evil-mode-custom") 

(load-library "custom-keys")
(load-library "fci-mode")
(load-library "custom-editing")
(load-library "snippets")
;; load emacs goodies 
(load-library "emacs-goodies-el")

;; manage backups/autosaves
(load-library "backup-autosave")


