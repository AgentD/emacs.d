;; tab width
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(defvaralias 'c-basic-offset 'tab-width)
(add-hook 'java-mode-hook (lambda()
			    	(setq c-basic-offset 4)))
;; max. 80 char 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)
;;(setq mouse-autoselect-window t)

