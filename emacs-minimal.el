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

(custom-set-faces
 '(default ((t (:background "grey20" :foreground "grey90" :inverse-video nil
 :box nil :strike-through nil :overline nil :underline nil :slant normal))))
 '(cursor ((t (:background "green"))))
 '(isearch ((nil (:foreground "dodgerblue" :weight bold))))
 '(minibuffer-prompt ((t (:foreground "grey90"))))
 '(mouse ((t (:background "yellow"))))
 '(region ((t (:foreground "red" :weight bold))))
 '(scroll-bar ((t (:stipple nil :background "grey20" :foreground "grey80"))))
 '(show-paren-match ((((class color)) (:foreground "green"))))
 '(show-paren-mismatch ((((class color)) (:foreground "red"))))
 '(tool-bar ((((type x w32 mac) (class color)) (:box (:line-width 1 :style
																  released-button))))))

(setq visible-bell nil)
(setq vc-follow-symlinks t)
(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere t)
(setq ido-auto-merge-work-directories-length -1)
(setq ido-default-buffer-method 'selected-window)
(setq ido-default-file-method 'selected-window)

(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (let ((buffer "*Completions*"))
              (and (get-buffer buffer)
				   (kill-buffer buffer)))))

(setq default-input-method "rfc1345")
(transient-mark-mode 1)
;; tab width
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default show-trailing-whitespace nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "linux"
	  c-basic-offset 8)
(setq backward-delete-char-untabify-method 'hungry)

(add-hook 'sh-mode-hook (lambda()
				(setq sh-basic-offset 8)
				(setq tab-width 8)
			    (setq sh-intendation 8)))

(add-hook 'c-mode-hook (lambda ()
						(setq indent-tabs-mode t)
						(c-set-style "linux")
						(c-set-offset 'comment-intro 0)))
(defun c-lineup-arglist-tabs-only (ignored)
	"Line up argument lists by tabs, not spaces"
	(let* ((anchor (c-langelem-pos c-syntactic-element))
		(c-langelem-2nd-pos c-syntactic-element))
		(offset (- (1+ column) anchor))
		(steps (floor offset c-basic-offset)))
		(* (max steps 1)
		c-basic-offset))

(setq-default auto-fill-function 'do-auto-fill)
(setq-default fill-column 80)
(setq mouse-autoselect-window t)
(delete-selection-mode 1)
(xterm-mouse-mode 1)
(cua-selection-mode 1)
(setq visible-cursor nil)
(fset 'yes-or-no-p 'y-or-n-p)
(put 'suspend-frame 'disabled t)


(defun run-term (&optional arg)
	(interactive "P")
	(let ((default-directory default-directory))
		(when arg
			(when (string-match "^.*/src/$" default-directory)
				(cd "../")
				(when (file-directory-p "build")
					(cd "build"))))
		(start-process "rxvt" nil "rxvt")))

(global-set-key (kbd "<s-return>") 'run-term)
(global-set-key (kbd "C-c t") 'run-term)

;; KEYBINDS
(global-set-key (kbd "C-x C-d") 'ido-dired)
(global-set-key (kbd "C-x C-h") 'mark-whole-buffer)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-SPC") 'cua-set-mark)
(global-set-key (kbd "C-@") 'set-mark-command)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-k") 'kill-whole-line)
(defun backward-kill-line (arg)
  "Kill ARG lines backward."
  (interactive "p")
 (if (eq (point) (line-beginning-position))
	 (delete-indentation)
 (kill-line (- 1 arg))))

(global-set-key (kbd "C-u") 'backward-kill-line) ;; be readline conform
(global-set-key (kbd "M-u") 'universal-argument)
(global-set-key (kbd "M-U") 'upcase-word)

(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "C-x SPC") 'cua-rectangle-mark-mode)
(global-set-key (kbd "C-x C-SPC") 'cua-rectangle-mark-mode)
(global-set-key (kbd "C-c SPC") 'rectangle-mark-mode)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-c h") 'help)

(global-set-key (kbd "M-<right>") 'next-bugger)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "M-<left>") 'previous-bugger)
(global-set-key (kbd "C-<prior>") 'previous-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)
(global-set-key (kbd "C-x 4") 'make-frame-command)

(defun kill-buffer-and-window ()
	(interactive)
	(if (one-window-p)
			(kill-current-buffer)
		(progn
			(kill-current-buffer)
			(delete-window))))
(global-set-key (kbd "C-x k") 'kill-buffer-and-window)
(global-unset-key (kbd "<f2>"))
(global-unset-key (kbd "<insert>"))
(global-unset-key (kbd "<insertchar>"))
(global-unset-key (kbd "C-t"))
(global-unset-key (kbd "M-t"))
(global-unset-key (kbd "C-x C-z")) ;; disables suspend frame via keybind

;; custom cua-like keybinds
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

(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))

(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosave/" t)))
