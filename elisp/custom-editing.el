;; tab width
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(defvaralias 'c-basic-offset 'tab-width)
;; max. 80 char 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)
(setq mouse-autoselect-window t)

