(require 'dired-x)
(setq-default dired-omit-files "^\\...+$")
(setq-default dired-omit-mode t) ;; Turn on Omit mode.
(define-key dired-mode-map (kbd "C-h") 'dired-omit-mode)
