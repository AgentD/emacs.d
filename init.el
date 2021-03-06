(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(battery-mode-line-format "[%b%p%%] ")
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode nil nil (cua-base))
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(display-time-format "%Y-%m-%d %H:%M")
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
	(htmlize fill-column-indicator yasnippet visual-fill-column markdown-mode magit-popup magit haskell-mode flx diminish auctex)))
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(use-dialog-box nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((t (:foreground "#4286f4"))))
 '(dired-symlink ((t (:foreground "#75507B"))))
 '(font-latex-sectioning-0-face ((t (:inherit variable-pitch :foreground "#bebebe" :weight bold))))
 '(font-latex-sectioning-1-face ((t (:foreground "#bebebe" :inherit font-latex-sectioning-0-face :height 0.95))))
 '(font-latex-sectioning-2-face ((t (:foreground "#bebebe" :inherit font-latex-sectioning-1-face :height 0.9))))
 '(font-latex-sectioning-3-face ((t (:foreground "#bebebe" :inherit font-latex-sectioning-2-face :height 0.85))))
 '(font-latex-sectioning-4-face ((t (:foreground "#bebebe" :inherit font-latex-sectioning-3-face :height 1.0))))
 '(font-latex-sectioning-5-face ((t (:foreground "#bebebe" :inherit font-latex-sectioning-4-face :height 1.0))))
 '(trailing-whitespace ((t (:background "#ffb6b0"))))
 '(variable-pitch ((t (:font "Sans-Serif-16")))))

;;(load-library "~/.emacs.d/themes/shared-faces")

(setq frame-title-format '("" "emacs@" system-name " - %b"))
(setq visible-bell nil)
(setq vc-follow-symlinks t)

(setq exec-path (append '("~/.bin" "~/bin" "~/.cabal/bin")
                        exec-path))

(add-to-list 'load-path "~/.emacs.d/elisp")
(require 'iso-transl)

(add-to-list 'custom-theme-load-path (file-name-as-directory
									  "~/.emacs.d/themes"))
(load-theme 'subl-dark t)
(enable-theme 'subl-dark)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere t)
(setq ido-auto-merge-work-directories-length -1)
(setq ido-default-buffer-method 'selected-window)
(setq ido-default-file-method 'selected-window)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-global-mode 1)

(load-library "custom-editing")

(load-library "custom-buffer-mode")
(load-library "custom-terminal-mode")
(load-library "custom-eshell-mode")
(load-library "custom-dired-mode")
(load-library "custom-keys")
(load-library "custom-diminish-mode")
(load-library "custom-font-mode")
(load-library "custom-ibuffer")
(load-library "theme-switch")
(load-library "aliases")
;; manage backups/autosaves
(load-library "backup-autosave")
