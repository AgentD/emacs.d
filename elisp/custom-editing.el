;; tab width
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
;; (setq-default tab-always-indent t) ;; make tab key always call a indent command.
;; (setq-default tab-always-indent nil) ;; make tab key call indent command or insert tab character, depending on cursor position
;; (setq-default tab-always-indent 'complete) ;; make tab key do indent first then completion.

(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "Linux" 
      c-basic-offset 8)
(add-hook 'java-mode-hook (lambda()
                            (setq c-basic-offset 4)))
(add-hook 'sh-mode-hook (lambda()
                          (setq sh-basic-offset 8)
                          (setq sh-intendation 8)))
(add-hook 'emacs-lisp-mode-hook (lambda()
						  (setq c-basic-offset 4)
                          (setq lisp-body-indent 4)))
(add-hook 'haskell-mode-hook (lambda()
								 (setq c-basic-offset 4)
		                         (setq c-basic-offset 8)))
;; max. 80 char 
;;(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default auto-fill-function 'do-auto-fill)
(setq-default fill-column 80)
(setq mouse-autoselect-window t)
(xterm-mouse-mode 1)
(setq undo-tree-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

