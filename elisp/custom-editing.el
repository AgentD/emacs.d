;; tab width
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(defvaralias 'c-basic-offset 'tab-width)
(setq c-default-style "Linux" 
      c-basic-offset 8)
(add-hook 'java-mode-hook (lambda()
                            (setq c-basic-offset 4)))
(add-hook 'text-mode-hook (lambda()
                            (setq c-basic-offset 4)))
;; max. 80 char 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)
(setq mouse-autoselect-window t)
(xterm-mouse-mode 1)
(setq undo-tree-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

