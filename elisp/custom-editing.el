;; tab width
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default show-trailing-whitespace nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "linux"
	  c-basic-offset 8)

;; Make backspace erase the tab instead of removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)

(add-hook 'java-mode-hook (lambda()
		    	(setq c-basic-offset 4)
				(setq tab-width 4)
				(c-set-offset 'inline-open 0)))

(add-hook 'sh-mode-hook (lambda()
				(setq sh-basic-offset 8)
				(setq tab-width 8)
			    (setq sh-intendation 8)))

(add-hook 'emacs-lisp-mode-hook (lambda()
				(setq c-basic-offset 4)
				(setq tab-width 4)
				(setq lisp-body-indent 4)))

(add-hook 'lisp-mode-hook (lambda()
				(setq c-basic-offset 4)
				(setq tab-width 4)
				(setq lisp-body-indent 4)))

(add-hook 'haskell-mode-hook (lambda()
				(setq c-basic-offset 4)
				(setq tab-width 4)
				(setq indent-tabs-mode nil)))

(add-hook 'python-mode-hook (lambda ()
				(setq indent-tabs-mode t)
				(setq python-indent 4)
				(setq tab-width 4)))

(defun hide-trailing-whitespace ()
	            (when (derived-mode-p 'eshell-mode
									  'term-mode)
					(setq auto-fill-mode nil)
					(setq show-trailing-whitespace nil)))

(add-hook 'after-change-major-mode-hook
          'hide-trailing-whitespace)

(add-hook 'c-mode-hook (lambda ()
						   (setq indent-tabs-mode t)
						   (c-set-style "linux")
						   (c-set-offset 'comment-intro 0)))

(setq-default auto-fill-function 'do-auto-fill)
(setq-default fill-column 80)
(setq-default delete-selection-mode t)
(setq mouse-autoselect-window t)
(xterm-mouse-mode 1)
(setq visible-cursor nil)
(setq undo-tree-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(put 'suspend-frame 'disabled t)
(setq org-highlight-latex-and-related '(latex script entities))
(setq org-src-fontify-natively t
      org-src-tab-acts-natively t
      org-confirm-babel-evaluate nil
      org-edit-src-content-indentation 0)
;; reuse compilation window even if it is in anoter frame
(add-to-list 'display-buffer-alist
			 '("\\*compilaition\\*"
			   . (nil (reusable-frames . visible))))
