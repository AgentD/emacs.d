(custom-set-variables
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
 '(scroll-bar-mode (quote nil))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(use-dialog-box nil))
(global-font-lock-mode 0)
(when (display-graphic-p)
	(custom-set-faces
	 '(default ((t (:background "#FFFFEA" :foreground "#000000"
								:font "Monospace:pixelsize=14"))))
	 '(mode-line ((t (:foreground "#000000" :background "#EAFFFF"
								  :box (:line-width 1 :color "#073642"
														  :style unspecified)))))
	 '(region ((t (:foreground "#000000" :background "#EEEE9E"))))
	 '(cursor ((t (:background "#000000"))))))

(set-face-attribute 'default t  )
(set-frame-font "Monospace:pixelsize=14" nil t)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-word)
(defconst custom-region-alist
  `((mark-active
     ,@(let ((m (make-sparse-keymap)))
           (define-key m (kbd "C-c") 'kill-ring-save)
		   (define-key m (kbd "C-M-c") 'kill-ring-save)
           (define-key m (kbd "C-w") 'kill-region)
		   (define-key m (kbd "C-x") 'kill-region)
           m))))

(add-to-list 'emulation-mode-map-alists 'custom-region-alist)
(global-set-key (kbd "M-W") 'backward-kill-sexp)
(global-set-key (kbd "C-v") 'yank)
(defun yank-primary ()
  (interactive)
  (insert
   (gui-get-primary-selection)))
(global-set-key (kbd "C-M-v") 'yank-primary)
(global-set-key (kbd "C-x SPC") 'cua-rectangle-mark-mode)
(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "C-<f10>") 'menu-bar-mode)
(global-set-key (kbd "<f11>") 'font-lock-mode)


(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default show-trailing-whitespace nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "linux"
	  c-basic-offset 8)
(setq-default auto-fill-function 'do-auto-fill)
(setq-default fill-column 80)
(setq mouse-autoselect-window t)
(delete-selection-mode 1)
(xterm-mouse-mode 1)
(cua-selection-mode 1)
(setq visible-cursor nil)
(fset 'yes-or-no-p 'y-or-n-p)
(put 'suspend-frame 'disabled t)

(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))

(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosave/" t)))
