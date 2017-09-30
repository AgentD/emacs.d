;; tab width
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)

;; max. 80 char 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)
