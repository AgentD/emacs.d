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
 '(jdee-server-dir "~/.emacs.d/jdee-jar")
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (undo-tree magit yasnippet flx-ido auto-complete-auctex jdee haskell-mode fill-column-indicator auto-complete auctex)))
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 71 :width normal)))))
 '(scroll-bar ((t (:background "grey9" :distant-foreground "grey9" :foreground "gray9")))))

(add-to-list 'load-path "~/.emacs.d/elisp")

;; custom color-theme
(add-to-list 'custom-theme-load-path (file-name-as-directory "~/.emacs.d/themes"))
(load-theme 'gl-dark t)
(enable-theme 'gl-dark)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; better find-file
(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere t)

(load-library "snippets")
;;(load-library "emacs-goodies-el")
(load-library "custom-buffer-mode")
(load-library "custom-editing")
(load-library "custom-keys")
(load-library "fci-mode")
;; manage backups/autosaves
(load-library "backup-autosave")

