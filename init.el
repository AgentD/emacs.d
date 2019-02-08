(custom-set-variables
 ;;'(battery-mode-line-format "%b%p%% ")
 '(battery-mode-line-format "[%b%p%%] ")
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 ;; '(cua-mode t nil (cua-base))
 '(cua-mode nil)
;; '(display-battery-mode t)
  '(display-battery-mode nil)
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-default-load-average nil)
 ;; '(display-time-mode t)
  '(display-time-mode nil)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (yasnippet visual-fill-column undo-tree s popup markdown-mode magit haskell-mode flycheck flx auctex)))
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 '(dired-directory ((t (:foreground "#75507b"))))
 '(trailing-whitespace ((t (:background "#ffb6b0")))))

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
(load-library "theme-switch")
;; manage backups/autosaves
(load-library "backup-autosave")
