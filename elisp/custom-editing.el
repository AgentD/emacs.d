;; tab width
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default show-trailing-whitespace t)
;; (setq-default tab-always-indent t) ;; make tab key always call a indent command.
;; (setq-default tab-always-indent nil) ;; make tab key call indent command or insert tab character, depending on cursor position
;; (setq-default tab-always-indent 'complete) ;; make tab key do indent first then completion.

(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "linux"
	  c-basic-offset 8)

;; usable java indentation
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

(add-hook 'haskell-mode-hook (lambda()
				(setq c-basic-offset 4)
				(setq tab-width 4)
				(setq indent-tabs-mode nil)))

;; (defun c-lineup-arglist-tabs-only (ignored)
;;   "Line up argument lists by tabs, not spaces"
;;   (let* ((anchor (c-langelem-pos c-syntactic-element))
;;          (column (c-langelem-2nd-pos c-syntactic-element))
;;          (offset (- (1+ column) anchor))
;;          (steps (floor offset c-basic-offset)))
;;     (* (max steps 1) )))
;; (add-hook 'c-mode-common-hook (lambda ()
;; 				  ;; Add kernel style
;; 				  (c-add-style
;; 				   "linux-tabs-only"
;; 				   '("linux" (c-offsets-alist
;; 					      (arglist-cont-nonempty
;; 					       c-lineup-gcc-asm-reg
;; 					       c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook (lambda ()
			    (setq indent-tabs-mode t)
				(c-set-style "linux")))

;; max. 80 char
;;(add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq-default auto-fill-function 'do-auto-fill)
(setq-default fill-column 79)
(setq mouse-autoselect-window t)
(xterm-mouse-mode 1)
(setq undo-tree-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
